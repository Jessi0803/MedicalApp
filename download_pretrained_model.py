#!/usr/bin/env python3
"""
Download pre-trained medical student model
This script downloads the trained 99-sample model so users don't need to train from scratch
"""

import os
import requests
import tarfile
from tqdm import tqdm
import hashlib

class ModelDownloader:
    def __init__(self):
        self.model_url = "YOUR_DOWNLOAD_URL_HERE"  # 你需要替換這個URL
        self.model_filename = "medical_student_model_99.tar.gz"
        self.target_dir = "src/03_sensor_enhanced"
        self.model_dir = "sensor_enhanced_student_model_99_en"
        
        # 檔案校驗碼（確保下載完整）
        self.expected_sha256 = "YOUR_FILE_HASH_HERE"  # 可選的校驗
    
    def check_existing_model(self):
        """檢查模型是否已經存在"""
        model_path = os.path.join(self.target_dir, self.model_dir)
        if os.path.exists(model_path) and os.path.exists(os.path.join(model_path, "model.safetensors")):
            return True
        return False
    
    def download_file(self, url, filename):
        """下載檔案並顯示進度條"""
        print(f"正在下載: {filename}")
        print(f"來源: {url}")
        
        try:
            response = requests.get(url, stream=True)
            response.raise_for_status()
            
            total_size = int(response.headers.get('content-length', 0))
            
            with open(filename, 'wb') as file, tqdm(
                desc=filename,
                total=total_size,
                unit='B',
                unit_scale=True,
                unit_divisor=1024,
            ) as bar:
                for chunk in response.iter_content(chunk_size=8192):
                    if chunk:
                        file.write(chunk)
                        bar.update(len(chunk))
            
            print(f"下載完成: {filename}")
            return True
            
        except requests.RequestException as e:
            print(f"下載失敗: {e}")
            return False
    
    def verify_file(self, filename):
        """驗證檔案完整性（可選）"""
        if not self.expected_sha256:
            return True
            
        print("驗證檔案完整性...")
        sha256_hash = hashlib.sha256()
        with open(filename, "rb") as f:
            for chunk in iter(lambda: f.read(4096), b""):
                sha256_hash.update(chunk)
        
        file_hash = sha256_hash.hexdigest()
        if file_hash == self.expected_sha256:
            print("檔案驗證成功")
            return True
        else:
            print(f"檔案驗證失敗。期望: {self.expected_sha256}, 實際: {file_hash}")
            return False
    
    def extract_model(self, filename):
        """解壓縮模型檔案"""
        print("正在解壓縮模型...")
        try:
            with tarfile.open(filename, 'r:gz') as tar:
                tar.extractall(path='.')
            
            print("解壓縮完成")
            return True
            
        except Exception as e:
            print(f"解壓縮失敗: {e}")
            return False
    
    def cleanup(self, filename):
        """清理下載的壓縮檔案"""
        try:
            os.remove(filename)
            print(f"已清理臨時檔案: {filename}")
        except Exception as e:
            print(f"清理檔案失敗: {e}")
    
    def download_and_setup(self):
        """主要的下載和設置流程"""
        print("醫療AI模型下載器")
        print("=" * 50)
        
        # 檢查是否已經有模型
        if self.check_existing_model():
            print("模型已存在，無需下載")
            print(f"位置: {os.path.join(self.target_dir, self.model_dir)}")
            return True
        
        # 檢查URL是否設置
        if self.model_url == "YOUR_DOWNLOAD_URL_HERE":
            print("錯誤: 尚未設置下載URL")
            print("請聯繫模型作者獲取下載連結")
            return False
        
        # 創建目標目錄
        os.makedirs(self.target_dir, exist_ok=True)
        
        # 下載檔案
        if not self.download_file(self.model_url, self.model_filename):
            return False
        
        # 驗證檔案（可選）
        if not self.verify_file(self.model_filename):
            self.cleanup(self.model_filename)
            return False
        
        # 解壓縮
        if not self.extract_model(self.model_filename):
            self.cleanup(self.model_filename)
            return False
        
        # 清理
        self.cleanup(self.model_filename)
        
        print("\n模型下載和設置完成！")
        print("現在可以運行 demo:")
        print("  cd demo")
        print("  python3 demo_sensor_enhanced_99_en.py")
        
        return True

def create_download_instructions():
    """創建給其他用戶的下載說明"""
    instructions = """
# 預訓練模型下載說明

## 自動下載（推薦）
```bash
python3 download_pretrained_model.py
```

## 手動下載
如果自動下載失敗，可以手動下載：

1. 下載模型檔案: [下載連結]
2. 將檔案放在專案根目錄
3. 解壓縮:
   ```bash
   tar -xzf medical_student_model_99.tar.gz
   ```

## 檔案資訊
- 檔案大小: ~3.7GB (壓縮後 ~2.9GB)
- 訓練樣本: 99個醫療情境
- 包含: 模型權重、詞彙表、配置檔案

## 使用方法
下載完成後可以直接使用:
```bash
cd demo
python3 demo_sensor_enhanced_99_en.py
```
"""
    
    with open("MODEL_DOWNLOAD.md", "w", encoding="utf-8") as f:
        f.write(instructions)
    
    print("已創建下載說明檔案: MODEL_DOWNLOAD.md")

def main():
    """主函數"""
    import argparse
    
    parser = argparse.ArgumentParser(description="下載預訓練醫療AI模型")
    parser.add_argument("--create-docs", action="store_true", help="創建下載說明文件")
    
    args = parser.parse_args()
    
    if args.create_docs:
        create_download_instructions()
        return
    
    downloader = ModelDownloader()
    success = downloader.download_and_setup()
    
    if not success:
        print("\n下載失敗。請檢查網路連接或聯繫模型作者。")
        exit(1)

if __name__ == "__main__":
    main() 
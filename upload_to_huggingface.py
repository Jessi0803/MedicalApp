#!/usr/bin/env python3
"""
Upload medical student model to Hugging Face Hub
"""

import os
from huggingface_hub import create_repo, upload_folder, login

def upload_model():
    """上傳模型到Hugging Face Hub"""
    
    print("上傳醫療AI模型到 Hugging Face Hub")
    print("=" * 50)
    
    # 檢查模型是否存在
    model_path = "src/03_sensor_enhanced/sensor_enhanced_student_model_99_en"
    
    if not os.path.exists(model_path):
        print(f"錯誤: 找不到模型檔案 {model_path}")
        print("請先確認模型已訓練完成")
        return False
    
    print(f"找到模型: {model_path}")
    
    # 輸入資訊
    username = input("Hugging Face 用戶名: ").strip()
    if not username:
        print("錯誤: 需要用戶名")
        return False
    
    repo_name = input("模型名稱 (默認: medical-student-model-99): ").strip()
    if not repo_name:
        repo_name = "medical-student-model-99"
    
    repo_id = f"{username}/{repo_name}"
    
    print(f"\n將上傳到: https://huggingface.co/{repo_id}")
    confirm = input("確認上傳? (y/N): ").strip().lower()
    
    if confirm != 'y':
        print("取消上傳")
        return False
    
    # 登入
    print("\n請登入 Hugging Face...")
    print("從這裡獲取 token: https://huggingface.co/settings/tokens")
    token = input("輸入 Hugging Face token: ").strip()
    
    if not token:
        print("錯誤: 需要 token")
        return False
    
    try:
        # 登入
        login(token=token)
        print("登入成功")
        
        # 創建 repository
        print(f"創建 repository: {repo_id}")
        create_repo(repo_id=repo_id, exist_ok=True)
        
        # 上傳檔案
        print("開始上傳檔案... (可能需要一段時間)")
        upload_folder(
            folder_path=model_path,
            repo_id=repo_id,
            repo_type="model"
        )
        
        print("\n上傳完成!")
        print(f"模型連結: https://huggingface.co/{repo_id}")
        
        return True
        
    except Exception as e:
        print(f"上傳失敗: {e}")
        return False

if __name__ == "__main__":
    success = upload_model()
    if success:
        print("\n其他用戶現在可以這樣使用你的模型:")
        print("from transformers import AutoTokenizer, AutoModelForCausalLM")
        print("tokenizer = AutoTokenizer.from_pretrained('你的用戶名/模型名稱')")
        print("model = AutoModelForCausalLM.from_pretrained('你的用戶名/模型名稱')")
    else:
        print("上傳失敗，請檢查錯誤訊息") 
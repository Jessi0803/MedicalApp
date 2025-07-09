# 感測器增強知識蒸餾工作流程

## 📋 完整流程圖

```
🏥 醫療知識蒸餾 + 感測器數據增強流程
├── 1. 預備階段
│   ├── medgemma.py                    # 測試MedGemma-27B基礎功能
│   ├── QWQ.py                         # 測試QwQ-0.5B基礎功能
│   └── test_medgemma_sensor_knowledge.py  # 驗證MedGemma感測器知識
│
├── 2. 🔥 核心訓練階段
│   ├── sensor_enhanced_distillation.py      # 中文版感測器增強訓練
│   ├── sensor_enhanced_distillation_en.py   # 英文版感測器增強訓練
│   │
│   ├── 輸出文件：
│   ├── sensor_enhanced_training_data.json     # 中文訓練數據
│   ├── sensor_enhanced_training_data_en.json  # 英文訓練數據
│   ├── sensor_enhanced_student_model/         # 中文模型
│   └── sensor_enhanced_student_model_en/      # 英文模型
│
├── 3. 🧪 測試驗證階段
│   ├── test_sensor_enhanced_model.py         # 中文模型綜合測試
│   ├── test_sensor_enhanced_model_en.py      # 英文模型綜合測試
│   │
│   ├── 功能：
│   ├── ✅ 加載訓練好的模型
│   ├── ✅ 生成感測器數據
│   ├── ✅ 運行8個醫療場景測試
│   ├── ✅ 互動測試模式
│   └── ✅ 保存測試結果JSON
│
└── 4. 🎯 演示展示階段
    ├── demo_sensor_enhanced.py              # 中文版簡潔演示
    ├── demo_sensor_enhanced_en.py           # 英文版簡潔演示
    │
    ├── 功能：
    ├── ✅ 加載訓練好的模型
    ├── ✅ 4個核心醫療案例演示
    ├── ✅ 清晰的輸出格式
    └── ✅ 適合展示和演講
```

## 📍 腳本在流程中的具體位置

### `demo_sensor_enhanced.py` 和 `demo_sensor_enhanced_en.py`
**位置：** 流程的 **第4階段 - 演示展示階段**

**功能：**
- 🎯 **目的**：快速展示感測器增強模型的核心功能
- 📊 **測試案例**：4個精選的醫療場景
- 🖥️ **輸出格式**：清晰、簡潔，適合演示
- 👥 **目標用戶**：展示給客戶、同事或會議演講

**使用時機：**
```bash
# 在完成訓練後，用於快速演示
cd /home/jc/wear
python3 demo_sensor_enhanced.py        # 中文版演示
python3 demo_sensor_enhanced_en.py     # 英文版演示
```

### `test_sensor_enhanced_model.py` 和 `test_sensor_enhanced_model_en.py`
**位置：** 流程的 **第3階段 - 測試驗證階段**

**功能：**
- 🧪 **目的**：全面測試模型性能和穩定性
- 📋 **測試案例**：8個完整的醫療場景
- 🔄 **互動模式**：支持用戶輸入自定義症狀
- 💾 **結果保存**：詳細的JSON測試報告
- 📊 **評估指標**：多維度性能分析

**使用時機：**
```bash
# 在完成訓練後，用於全面測試
cd /home/jc/wear
python3 test_sensor_enhanced_model.py     # 中文版測試
python3 test_sensor_enhanced_model_en.py  # 英文版測試
```

## 🔄 完整使用流程

### 步驟1：訓練模型
```bash
# 訓練中文版感測器增強模型
python3 sensor_enhanced_distillation.py

# 訓練英文版感測器增強模型
python3 sensor_enhanced_distillation_en.py
```

### 步驟2：全面測試（開發階段）
```bash
# 運行全面測試，驗證模型性能
python3 test_sensor_enhanced_model.py
python3 test_sensor_enhanced_model_en.py
```

### 步驟3：演示展示（展示階段）
```bash
# 運行簡潔演示，展示核心功能
python3 demo_sensor_enhanced.py
python3 demo_sensor_enhanced_en.py
```

## 📊 輸出文件說明

### 訓練階段輸出：
- `sensor_enhanced_training_data.json` - 訓練數據
- `sensor_enhanced_student_model/` - 訓練好的模型

### 測試階段輸出：
- `sensor_enhanced_test_results.json` - 詳細測試結果
- `sensor_enhanced_test_results_en.json` - 英文測試結果

### 演示階段輸出：
- 終端顯示清晰的演示結果
- 適合截圖和展示

## 🎯 選擇使用哪個腳本

| 情況 | 推薦腳本 | 原因 |
|------|----------|------|
| 開發測試 | `test_sensor_enhanced_model.py` | 全面測試，詳細報告 |
| 客戶演示 | `demo_sensor_enhanced.py` | 簡潔清晰，重點突出 |
| 會議展示 | `demo_sensor_enhanced_en.py` | 英文版，國際化 |
| 性能評估 | `test_sensor_enhanced_model.py` | 多場景測試，量化指標 |
| 快速驗證 | `demo_sensor_enhanced.py` | 4個案例，快速確認 |

## 💡 最佳實踐

1. **開發階段**：先用 `test_` 腳本進行全面測試
2. **演示階段**：用 `demo_` 腳本進行簡潔展示
3. **文檔記錄**：保存測試結果JSON用於後續分析
4. **版本管理**：中英文版本分別維護，便於國際化 
//////////////////////////////////////////////////////////////
//   Keychain 52-Shapes Name Customizable – Built-in TC Font Edition        //
//   客製化 52 種造型姓名鑰匙圈（支援掛載外部TTF中文字型 ＋ 內建免字型檔繁體中文向量字庫） //
//////////////////////////////////////////////////////////////

// 透過同目錄相對路徑載入外部中文字型檔（請確認 NotoSansTC-Bold.ttf 與本檔位於同一資料夾）：
use <NotoSansTC-Bold.ttf>

// 動態精細度：網頁預覽時使用 48 邊形確保流暢度，匯出 STL 完整渲染時自動切換為 96 邊形高精度
$fn = $preview ? 48 : 96;


/* [1. 排版模式與底板顏色設定] */
// 選擇文字排列為單行或雙行
mode = "One Line"; // ["One Line":單行文字, "Two Lines":雙行文字]
// 【選色 1】底板顏色（套用於文字底板與圖案底座）
base_color = "#FFFFFF";      //color
// 文字底板厚度 (mm)
base_height = 3;             // [1:0.1:6]
// 文字外圍底板的擴張寬度 (mm)
base_offset = 4;             // [1:0.5:15]


/* [2. 第一行文字與字體設定] */
// 選擇第一行文字引擎（線上無中文字型時，請選「內建純代碼繁體中文字庫」；已掛載 TTF 時可選「系統/上傳字型」）
line1_engine = "Builtin_TC"; // ["Builtin_TC":內建純代碼繁體中文字庫（免字型檔）, "System_Font":系統/上傳字型（支援外部掛載 TTF）]
// 輸入第一行文字（內建字庫支援：小花王陳林張李愛心福吉安樂寶貝甜明星月兔熊貓家好運發財平喜 及所有英數；切換 System_Font 支援所有中文字）
name_text = "小花";
// 【選色 2】第一行文字顏色
line1_color = "#FF99CC";     //color
// 系統字型名稱（當上方引擎選擇「系統/上傳字型」時生效，對應同目錄掛載之 NotoSansTC-Bold.ttf）
font_choice = "Noto Sans TC:style=Bold"; //font
// 第一行文字大小
font_size = 15;              // [5:1:50]
// 第一行文字加粗程度（調整文字粗細，避免 3D 列印筆畫過細斷裂）
text_bold_offset = 0.7;      // [0:0.1:2]
// 第一行文字立體凸起高度 (mm)
text_height = 2;             // [0.1:0.1:5]


/* [3. 第二行文字與字體設定] */
// 選擇第二行文字引擎（線上無中文字型時，請選「內建純代碼繁體中文字庫」；已掛載 TTF 時可選「系統/上傳字型」）
line2_engine = "Builtin_TC"; // ["Builtin_TC":內建純代碼繁體中文字庫（免字型檔）, "System_Font":系統/上傳字型（支援外部掛載 TTF）]
// 輸入第二行文字（僅在選擇「雙行文字」模式時顯示）
line2_text = "小花";
// 【選色 3】第二行文字顏色
line2_color = "#FF99CC";     //color
// 第二行系統字型名稱（當上方引擎選擇「系統/上傳字型」時生效，對應同目錄掛載之 NotoSansTC-Bold.ttf）
line2_font_choice = "Noto Sans TC:style=Bold"; //font
// 第二行文字大小
line2_font_size = 15;        // [5:1:50]
// 第二行文字加粗程度（獨立調整第二行文字粗細）
line2_text_bold_offset = 0.7; // [0:0.1:2]
// 第二行文字立體凸起高度 (mm)
line2_text_height = 2;       // [0.1:0.1:5]
// 第二行文字左右位置 X軸（點選後可按鍵盤 ← → 方向鍵移動）
line2_offset_x = 0;          // [-100:0.5:100]
// 第二行文字上下位置 Y軸（點選後可按鍵盤 ← → 方向鍵移動）
line2_offset_y = -20;        // [-100:0.5:100]


/* [4. 裝飾圖案 A 設定（預設在左側，附鑰匙圈掛孔）] */
// 下拉選擇圖案 A 造型（共 52 種造型可選，含雙色柴犬、青蛙與剪影外框款）
shapeA_type = "Shiba_Silhouette"; // ["None":🚫 不顯示, "Flower":🌸 花朵, "Shiba_Front":🐕 柴犬正面（雙色）, "Shiba_Back":🍑 柴犬背面（雙色）, "Shiba_Silhouette":🐕‍🦺 柴犬剪影（含外框）, "Bullfrog_Front":🐸 青蛙正面（雙色）, "Bullfrog_Back":🐸 青蛙背面（雙色）, "Frog_Silhouette":🐸 青蛙剪影（含外框）, "Star":⭐ 星星, "Heart":❤️ 愛心, "Crown":👑 皇冠, "Paw":🐾 貓爪, "Bow":🎀 蝴蝶結, "Lightning":⚡ 閃電, "Moon":🌙 月亮, "Clover":🍀 四葉草, "Diamond":💎 鑽石, "Music":🎵 音符, "Cloud":☁️ 雲朵, "Bear":🐻 小熊頭, "Butterfly":🦋 蝴蝶, "Apple":🍎 蘋果, "Cat":🐱 貓咪頭, "Rabbit":🐰 兔子頭, "Dino":🦖 小恐龍, "Rocket":🚀 火箭, "Shield":🛡️ 盾牌徽章, "IceCream":🍦 冰淇淋, "Strawberry":🍓 草莓, "Cherry":🍒 櫻桃, "Sun":☀️ 太陽, "Snowflake":❄️ 雪花, "Unicorn":🦄 獨角獸, "Penguin":🐧 小企鵝, "Dog":🐶 小狗狗, "Donut":🍩 甜甜圈, "Cupcake":🧁 杯子蛋糕, "Coffee":☕ 咖啡杯, "Basketball":🏀 籃球, "Car":🚗 小汽車, "Ghost":👻 小幽靈, "Tree":🎄 聖誕樹, "Pikmin":🌱 皮克敏, "Frog_Sit":🐸 1.正面蹲坐青蛙, "Frog_Head":🐸 2.Q版微笑大頭蛙, "Frog_Side":🐸 3.側面蹲坐青蛙, "Frog_Jump":🐸 4.飛躍大張腿青蛙, "Frog_Tongue":👅 5.吐長舌捕蟲青蛙, "Frog_Swim":🏊 6.俯視蛙式游泳蛙, "Frog_Umbrella":☂️ 7.撐荷葉傘青蛙, "Frog_Sing":🎵 8.鼓腮大叫唱歌蛙, "Frog_Crown":👑 9.皇冠青蛙王子, "Frog_Back":🍑 10.圓屁股背影青蛙]
// 【選色 4】圖案 A 顏色（選擇剪影時為「剪影內層主色」）
shapeA_color = "#222222";    //color
// 圖案 A 左右位置 X軸（點選後可按鍵盤 ← → 方向鍵左右移動）
shapeA_offset_x = -8;        // [-100:0.5:150]
// 圖案 A 上下位置 Y軸（點選後可按鍵盤 ← → 方向鍵上下移動）
shapeA_offset_y = 1;         // [-100:0.5:100]
// 圖案 A 整體大小
shapeA_size = 24;            // [8:1:60]
// 圖案 A 立體高度 (mm)
shapeA_height = 1.5;         // [0.5:0.1:4]
// 圖案 A 旋轉角度
shapeA_rotation = 0;         // [-180:1:180]
// 圖案 A 左右相反（水平鏡像翻轉）
shapeA_flip_x = false;       // [true:false]
// 圖案 A 上下顛倒（垂直鏡像翻轉）
shapeA_flip_y = false;       // [true:false]
// 是否啟用圖案 A 底部底板
shapeA_base_enable = true;   // [true:false]
// 圖案 A 底板外擴寬度 (mm)
shapeA_base_offset = 1.5;    // [0:0.5:10]


/* [5. 裝飾圖案 A 掛孔設定] */
// 掛孔 A 直徑 (mm，設為 0 則不打孔)
holeA_diameter = 3.2;        // [0:0.1:10]
// 掛孔 A 底板外擴寬度 (mm，於掛孔周圍生成圓形加厚吊環底板，設為 0 則不外擴)
holeA_base_offset = 2.5;     // [0:0.5:10]
// 掛孔 A 距離圖案中心的距離 (mm)
holeA_dist = 13;             // [0:0.5:40]
// 掛孔 A 所在的方位角度（180為正左側）
holeA_angle = 180;           // [0:1:360]
// 掛孔 A 左右位置微調 X軸 (mm，點選後可按鍵盤 ← → 方向鍵微調)
holeA_offset_x = 0;          // [-50:0.5:50]
// 掛孔 A 上下位置微調 Y軸 (mm，點選後可按鍵盤 ← → 方向鍵微調)
holeA_offset_y = 0;          // [-50:0.5:50]


/* [6. 裝飾圖案 B 設定（預設在右側，自由混搭第二個圖案）] */
// 下拉選擇圖案 B 造型（共 52 種造型可選，含雙色柴犬、青蛙與剪影外框款）
shapeB_type = "Frog_Silhouette"; // ["None":🚫 不顯示, "Flower":🌸 花朵, "Shiba_Front":🐕 柴犬正面（雙色）, "Shiba_Back":🍑 柴犬背面（雙色）, "Shiba_Silhouette":🐕‍🦺 柴犬剪影（含外框）, "Bullfrog_Front":🐸 青蛙正面（雙色）, "Bullfrog_Back":🐸 青蛙背面（雙色）, "Frog_Silhouette":🐸 青蛙剪影（含外框）, "Star":⭐ 星星, "Heart":❤️ 愛心, "Crown":👑 皇冠, "Paw":🐾 貓爪, "Bow":🎀 蝴蝶結, "Lightning":⚡ 閃電, "Moon":🌙 月亮, "Clover":🍀 四葉草, "Diamond":💎 鑽石, "Music":🎵 音符, "Cloud":☁️ 雲朵, "Bear":🐻 小熊頭, "Butterfly":🦋 蝴蝶, "Apple":🍎 蘋果, "Cat":🐱 貓咪頭, "Rabbit":🐰 兔子頭, "Dino":🦖 小恐龍, "Rocket":🚀 火箭, "Shield":🛡️ 盾牌徽章, "IceCream":🍦 冰淇淋, "Strawberry":🍓 草莓, "Cherry":🍒 櫻桃, "Sun":☀️ 太陽, "Snowflake":❄️ 雪花, "Unicorn":🦄 獨角獸, "Penguin":🐧 小企鵝, "Dog":🐶 小狗狗, "Donut":🍩 甜甜圈, "Cupcake":🧁 杯子蛋糕, "Coffee":☕ 咖啡杯, "Basketball":🏀 籃球, "Car":🚗 小汽車, "Ghost":👻 小幽靈, "Tree":🎄 聖誕樹, "Pikmin":🌱 皮克敏, "Frog_Sit":🐸 1.正面蹲坐青蛙, "Frog_Head":🐸 2.Q版微笑大頭蛙, "Frog_Side":🐸 3.側面蹲坐青蛙, "Frog_Jump":🐸 4.飛躍大張腿青蛙, "Frog_Tongue":👅 5.吐長舌捕蟲青蛙, "Frog_Swim":🏊 6.俯視蛙式游泳蛙, "Frog_Umbrella":☂️ 7.撐荷葉傘青蛙, "Frog_Sing":🎵 8.鼓腮大叫唱歌蛙, "Frog_Crown":👑 9.皇冠青蛙王子, "Frog_Back":🍑 10.圓屁股背影青蛙]
// 【選色 5】圖案 B 顏色（選擇剪影時為「剪影內層主色」）
shapeB_color = "#2E7D32";    //color
// 圖案 B 左右位置 X軸（點選後可按鍵盤 ← → 方向鍵左右移動）
shapeB_offset_x = 46;        // [-100:0.5:200]
// 圖案 B 上下位置 Y軸（點選後可按鍵盤 ← → 方向鍵上下移動）
shapeB_offset_y = 1;         // [-100:0.5:100]
// 圖案 B 整體大小
shapeB_size = 24;            // [8:1:60]
// 圖案 B 立體高度 (mm)
shapeB_height = 1.5;         // [0.5:0.1:4]
// 圖案 B 旋轉角度
shapeB_rotation = 0;         // [-180:1:180]
// 圖案 B 左右相反（水平鏡像翻轉）
shapeB_flip_x = false;       // [true:false]
// 圖案 B 上下顛倒（垂直鏡像翻轉）
shapeB_flip_y = false;       // [true:false]
// 是否啟用圖案 B 底部底板
shapeB_base_enable = true;   // [true:false]
// 圖案 B 底板外擴寬度 (mm)
shapeB_base_offset = 1.5;    // [0:0.5:10]
// 圖案 B 掛孔直徑 (mm，預設為 0 不打孔，需要打孔請調大)
holeB_diameter = 0;          // [0:0.1:10]
// 掛孔 B 距離圖案中心的距離 (mm)
holeB_dist = 12;             // [0:0.5:40]
// 掛孔 B 所在的方位角度
holeB_angle = 0;             // [0:1:360]
// 掛孔 B 左右位置微調 X軸 (mm，點選後可按鍵盤 ← → 方向鍵微調)
holeB_offset_x = 0;          // [-50:0.5:50]
// 掛孔 B 上下位置微調 Y軸 (mm，點選後可按鍵盤 ← → 方向鍵微調)
holeB_offset_y = 0;          // [-50:0.5:50]


/* [7. 花朵花蕊專屬設定（當選擇花朵時生效）] */
// 【選色 6】花朵花蕊顏色
flower_center_color = "#FF99CC"; //color
// 花蕊立體高度 (mm)
flower_center_height = 1.5;      // [0.5:0.1:5]


/* [8. 柴犬正面專屬設定（當選擇柴犬正面時生效）] */
// 【選色 7】柴犬正面腹部顏色
shiba_front_belly_color = "#FFFDF5"; //color
// 柴犬正面腹部立體高度 (mm)
shiba_front_belly_height = 1.6;      // [0.5:0.1:5]
// 【選色 8】柴犬正面實心眼珠顏色
shiba_front_eye_color = "#1F1F1F";   //color
// 柴犬正面眼珠立體高度 (mm)
shiba_front_eye_height = 1.7;        // [0.5:0.1:5]


/* [9. 柴犬背面專屬設定（當選擇柴犬背面時生效）] */
// 【選色 9】柴犬背面腹部與腳底顏色
shiba_back_belly_color = "#FFFDF5";  //color
// 柴犬背面腹部立體高度 (mm)
shiba_back_belly_height = 1.6;       // [0.5:0.1:5]


/* [10. 青蛙正面專屬設定（當選擇青蛙正面時生效）] */
// 【選色 10】青蛙正面斑紋與眼珠顏色
frog_front_spot_color = "#2E5A36";   //color
// 青蛙正面斑紋立體高度 (mm)
frog_front_spot_height = 1.6;        // [0.5:0.1:5]


/* [11. 青蛙背面專屬設定（當選擇青蛙背面時生效）] */
// 【選色 11】青蛙背面斑紋顏色
frog_back_spot_color = "#2E5A36";    //color
// 青蛙背面斑紋立體高度 (mm)
frog_back_spot_height = 1.6;         // [0.5:0.1:5]


/* [12. 柴犬剪影專屬設定（當選擇柴犬剪影時生效）] */
// 【選色 12】柴犬剪影外框顏色
shiba_sil_outline_color = "#E69D35"; //color
// 柴犬剪影外框寬度 (mm)
shiba_sil_outline_width = 0.8;       // [0.3:0.1:2.5]
// 柴犬剪影外框立體高度 (mm)
shiba_sil_outline_height = 1.7;      // [0.5:0.1:5]


/* [13. 青蛙剪影專屬設定（當選擇青蛙剪影時生效）] */
// 【選色 13】青蛙剪影外框顏色
frog_sil_outline_color = "#A5D6A7";  //color
// 青蛙剪影外框寬度 (mm)
frog_sil_outline_width = 0.8;        // [0.3:0.1:2.5]
// 青蛙剪影外框立體高度 (mm)
frog_sil_outline_height = 1.7;       // [0.5:0.1:5]


/* -------------------------------------------------------- */
/* 內建純代碼繁體中文幾何筆畫字庫（免任何外部字型檔即可渲染）      */
/* -------------------------------------------------------- */

// 筆畫線段輔助模組（在 [x1, y1] 到 [x2, y2] 之間畫出圓頭粗筆畫）
module stroke_line(p1, p2, w=0.11) {
    hull() {
        translate(p1) circle(d=w);
        translate(p2) circle(d=w);
    }
}

// 單一中文字幾何定義（標準化在 [0, 0] ~ [1, 1] 框內）
module builtin_tc_char(ch) {
    w = 0.115; // 筆畫基礎粗細
    if (ch == "小") {
        stroke_line([0.50, 0.90], [0.50, 0.12], w);
        stroke_line([0.50, 0.12], [0.38, 0.22], w);
        stroke_line([0.28, 0.65], [0.14, 0.30], w);
        stroke_line([0.72, 0.65], [0.86, 0.30], w);
    }
    else if (ch == "花") {
        // 草字頭
        stroke_line([0.14, 0.78], [0.86, 0.78], w);
        stroke_line([0.34, 0.90], [0.34, 0.66], w);
        stroke_line([0.66, 0.90], [0.66, 0.66], w);
        // 左下單人旁
        stroke_line([0.36, 0.56], [0.16, 0.32], w);
        stroke_line([0.28, 0.44], [0.28, 0.10], w);
        // 右下化字
        stroke_line([0.82, 0.52], [0.54, 0.36], w);
        stroke_line([0.52, 0.58], [0.52, 0.18], w);
        stroke_line([0.52, 0.18], [0.84, 0.18], w);
        stroke_line([0.84, 0.18], [0.84, 0.30], w);
    }
    else if (ch == "王") {
        stroke_line([0.20, 0.82], [0.80, 0.82], w);
        stroke_line([0.24, 0.50], [0.76, 0.50], w);
        stroke_line([0.14, 0.16], [0.86, 0.16], w);
        stroke_line([0.50, 0.82], [0.50, 0.16], w);
    }
    else if (ch == "林") {
        // 左木
        stroke_line([0.12, 0.66], [0.44, 0.66], w);
        stroke_line([0.28, 0.88], [0.28, 0.12], w);
        stroke_line([0.28, 0.64], [0.12, 0.30], w);
        stroke_line([0.28, 0.56], [0.44, 0.34], w);
        // 右木
        stroke_line([0.54, 0.66], [0.88, 0.66], w);
        stroke_line([0.70, 0.88], [0.70, 0.12], w);
        stroke_line([0.70, 0.64], [0.52, 0.28], w);
        stroke_line([0.70, 0.60], [0.88, 0.28], w);
    }
    else if (ch == "陳") {
        // 左耳旁
        stroke_line([0.16, 0.84], [0.34, 0.84], w);
        stroke_line([0.34, 0.84], [0.24, 0.62], w);
        stroke_line([0.24, 0.62], [0.36, 0.44], w);
        stroke_line([0.36, 0.44], [0.24, 0.36], w);
        stroke_line([0.16, 0.84], [0.16, 0.12], w);
        // 右東
        stroke_line([0.44, 0.78], [0.86, 0.78], w);
        stroke_line([0.46, 0.64], [0.84, 0.64], w);
        stroke_line([0.84, 0.64], [0.84, 0.42], w);
        stroke_line([0.84, 0.42], [0.46, 0.42], w);
        stroke_line([0.46, 0.42], [0.46, 0.64], w);
        stroke_line([0.48, 0.53], [0.82, 0.53], w);
        stroke_line([0.65, 0.90], [0.65, 0.12], w);
        stroke_line([0.65, 0.42], [0.42, 0.18], w);
        stroke_line([0.65, 0.42], [0.88, 0.18], w);
    }
    else if (ch == "張") {
        // 弓
        stroke_line([0.14, 0.84], [0.36, 0.84], w);
        stroke_line([0.36, 0.84], [0.36, 0.64], w);
        stroke_line([0.36, 0.64], [0.16, 0.64], w);
        stroke_line([0.16, 0.64], [0.16, 0.44], w);
        stroke_line([0.16, 0.44], [0.36, 0.44], w);
        stroke_line([0.36, 0.44], [0.32, 0.14], w);
        stroke_line([0.32, 0.14], [0.20, 0.22], w);
        // 長
        stroke_line([0.52, 0.86], [0.84, 0.86], w);
        stroke_line([0.52, 0.86], [0.52, 0.44], w);
        stroke_line([0.52, 0.72], [0.80, 0.72], w);
        stroke_line([0.52, 0.58], [0.80, 0.58], w);
        stroke_line([0.44, 0.44], [0.88, 0.44], w);
        stroke_line([0.54, 0.44], [0.54, 0.14], w);
        stroke_line([0.54, 0.14], [0.68, 0.24], w);
        stroke_line([0.84, 0.38], [0.70, 0.28], w);
        stroke_line([0.64, 0.40], [0.88, 0.14], w);
    }
    else if (ch == "李") {
        // 木
        stroke_line([0.20, 0.76], [0.80, 0.76], w);
        stroke_line([0.50, 0.90], [0.50, 0.52], w);
        stroke_line([0.50, 0.76], [0.18, 0.52], w);
        stroke_line([0.50, 0.76], [0.82, 0.52], w);
        // 子
        stroke_line([0.28, 0.46], [0.72, 0.46], w);
        stroke_line([0.72, 0.46], [0.50, 0.34], w);
        stroke_line([0.50, 0.34], [0.50, 0.12], w);
        stroke_line([0.50, 0.12], [0.38, 0.20], w);
        stroke_line([0.16, 0.30], [0.84, 0.30], w);
    }
    else if (ch == "愛") {
        stroke_line([0.72, 0.88], [0.26, 0.82], w);
        stroke_line([0.28, 0.74], [0.34, 0.64], w);
        stroke_line([0.50, 0.76], [0.54, 0.64], w);
        stroke_line([0.74, 0.76], [0.66, 0.64], w);
        stroke_line([0.16, 0.58], [0.84, 0.58], w);
        stroke_line([0.16, 0.58], [0.16, 0.46], w);
        stroke_line([0.84, 0.58], [0.84, 0.46], w);
        // 心
        stroke_line([0.24, 0.42], [0.18, 0.30], w);
        stroke_line([0.36, 0.46], [0.36, 0.32], w);
        stroke_line([0.36, 0.32], [0.68, 0.32], w);
        stroke_line([0.50, 0.46], [0.56, 0.40], w);
        stroke_line([0.76, 0.44], [0.82, 0.34], w);
        // 友
        stroke_line([0.38, 0.24], [0.72, 0.24], w);
        stroke_line([0.44, 0.28], [0.22, 0.10], w);
        stroke_line([0.72, 0.24], [0.28, 0.10], w);
        stroke_line([0.36, 0.20], [0.80, 0.10], w);
    }
    else if (ch == "心") {
        stroke_line([0.22, 0.52], [0.14, 0.24], w);
        stroke_line([0.36, 0.62], [0.36, 0.18], w);
        stroke_line([0.36, 0.18], [0.76, 0.18], w);
        stroke_line([0.76, 0.18], [0.76, 0.34], w);
        stroke_line([0.50, 0.74], [0.60, 0.56], w);
        stroke_line([0.76, 0.64], [0.88, 0.42], w);
    }
    else if (ch == "福") {
        // 示字旁
        stroke_line([0.22, 0.86], [0.30, 0.76], w);
        stroke_line([0.14, 0.66], [0.36, 0.66], w);
        stroke_line([0.36, 0.66], [0.14, 0.36], w);
        stroke_line([0.26, 0.52], [0.26, 0.12], w);
        stroke_line([0.28, 0.48], [0.38, 0.38], w);
        // 右側一口田
        stroke_line([0.46, 0.84], [0.84, 0.84], w);
        stroke_line([0.48, 0.70], [0.82, 0.70], w);
        stroke_line([0.82, 0.70], [0.82, 0.54], w);
        stroke_line([0.82, 0.54], [0.48, 0.54], w);
        stroke_line([0.48, 0.54], [0.48, 0.70], w);
        // 田
        stroke_line([0.46, 0.42], [0.84, 0.42], w);
        stroke_line([0.84, 0.42], [0.84, 0.14], w);
        stroke_line([0.84, 0.14], [0.46, 0.14], w);
        stroke_line([0.46, 0.14], [0.46, 0.42], w);
        stroke_line([0.65, 0.42], [0.65, 0.14], w);
        stroke_line([0.46, 0.28], [0.84, 0.28], w);
    }
    else if (ch == "吉") {
        stroke_line([0.16, 0.72], [0.84, 0.72], w);
        stroke_line([0.50, 0.88], [0.50, 0.52], w);
        stroke_line([0.24, 0.52], [0.76, 0.52], w);
        // 口
        stroke_line([0.26, 0.38], [0.74, 0.38], w);
        stroke_line([0.74, 0.38], [0.74, 0.14], w);
        stroke_line([0.74, 0.14], [0.26, 0.14], w);
        stroke_line([0.26, 0.14], [0.26, 0.38], w);
    }
    else if (ch == "安") {
        // 寶蓋頭
        stroke_line([0.48, 0.90], [0.54, 0.78], w);
        stroke_line([0.18, 0.74], [0.82, 0.74], w);
        stroke_line([0.18, 0.74], [0.18, 0.58], w);
        stroke_line([0.82, 0.74], [0.82, 0.58], w);
        // 女
        stroke_line([0.46, 0.66], [0.30, 0.34], w);
        stroke_line([0.30, 0.34], [0.74, 0.14], w);
        stroke_line([0.66, 0.52], [0.26, 0.14], w);
        stroke_line([0.14, 0.48], [0.86, 0.48], w);
    }
    else if (ch == "樂") {
        // 白與雙幺
        stroke_line([0.42, 0.82], [0.58, 0.82], w);
        stroke_line([0.58, 0.82], [0.58, 0.52], w);
        stroke_line([0.58, 0.52], [0.42, 0.52], w);
        stroke_line([0.42, 0.52], [0.42, 0.82], w);
        stroke_line([0.42, 0.67], [0.58, 0.67], w);
        stroke_line([0.24, 0.82], [0.16, 0.66], w);
        stroke_line([0.16, 0.66], [0.30, 0.66], w);
        stroke_line([0.30, 0.74], [0.16, 0.52], w);
        stroke_line([0.16, 0.52], [0.32, 0.52], w);
        stroke_line([0.76, 0.82], [0.68, 0.66], w);
        stroke_line([0.68, 0.66], [0.82, 0.66], w);
        stroke_line([0.82, 0.74], [0.68, 0.52], w);
        stroke_line([0.68, 0.52], [0.84, 0.52], w);
        // 下方木
        stroke_line([0.16, 0.38], [0.84, 0.38], w);
        stroke_line([0.50, 0.46], [0.50, 0.12], w);
        stroke_line([0.50, 0.38], [0.18, 0.16], w);
        stroke_line([0.50, 0.38], [0.82, 0.16], w);
    }
    else if (ch == "寶") {
        stroke_line([0.48, 0.90], [0.54, 0.80], w);
        stroke_line([0.16, 0.76], [0.84, 0.76], w);
        stroke_line([0.16, 0.76], [0.16, 0.62], w);
        stroke_line([0.84, 0.76], [0.84, 0.62], w);
        // 王與缶簡化結構
        stroke_line([0.24, 0.64], [0.46, 0.64], w);
        stroke_line([0.35, 0.64], [0.35, 0.44], w);
        stroke_line([0.24, 0.44], [0.46, 0.44], w);
        stroke_line([0.56, 0.64], [0.76, 0.64], w);
        stroke_line([0.66, 0.64], [0.66, 0.44], w);
        stroke_line([0.54, 0.44], [0.78, 0.44], w);
        // 貝
        stroke_line([0.28, 0.36], [0.72, 0.36], w);
        stroke_line([0.72, 0.36], [0.72, 0.20], w);
        stroke_line([0.72, 0.20], [0.28, 0.20], w);
        stroke_line([0.28, 0.20], [0.28, 0.36], w);
        stroke_line([0.28, 0.28], [0.72, 0.28], w);
        stroke_line([0.38, 0.16], [0.22, 0.08], w);
        stroke_line([0.62, 0.16], [0.78, 0.08], w);
    }
    else if (ch == "貝") {
        stroke_line([0.26, 0.84], [0.74, 0.84], w);
        stroke_line([0.74, 0.84], [0.74, 0.30], w);
        stroke_line([0.74, 0.30], [0.26, 0.30], w);
        stroke_line([0.26, 0.30], [0.26, 0.84], w);
        stroke_line([0.26, 0.66], [0.74, 0.66], w);
        stroke_line([0.26, 0.48], [0.74, 0.48], w);
        stroke_line([0.38, 0.24], [0.20, 0.10], w);
        stroke_line([0.62, 0.24], [0.80, 0.10], w);
    }
    else if (ch == "甜") {
        // 舌
        stroke_line([0.42, 0.84], [0.16, 0.78], w);
        stroke_line([0.12, 0.62], [0.46, 0.62], w);
        stroke_line([0.30, 0.80], [0.30, 0.44], w);
        stroke_line([0.16, 0.44], [0.42, 0.44], w);
        stroke_line([0.42, 0.44], [0.42, 0.16], w);
        stroke_line([0.42, 0.16], [0.16, 0.16], w);
        stroke_line([0.16, 0.16], [0.16, 0.44], w);
        // 甘
        stroke_line([0.50, 0.66], [0.88, 0.66], w);
        stroke_line([0.58, 0.84], [0.58, 0.14], w);
        stroke_line([0.80, 0.84], [0.80, 0.14], w);
        stroke_line([0.58, 0.42], [0.80, 0.42], w);
        stroke_line([0.58, 0.16], [0.80, 0.16], w);
    }
    else if (ch == "美") {
        stroke_line([0.34, 0.88], [0.42, 0.78], w);
        stroke_line([0.66, 0.88], [0.58, 0.78], w);
        stroke_line([0.22, 0.74], [0.78, 0.74], w);
        stroke_line([0.26, 0.60], [0.74, 0.60], w);
        stroke_line([0.18, 0.46], [0.82, 0.46], w);
        stroke_line([0.50, 0.74], [0.50, 0.46], w);
        // 大
        stroke_line([0.16, 0.34], [0.84, 0.34], w);
        stroke_line([0.50, 0.44], [0.20, 0.12], w);
        stroke_line([0.50, 0.34], [0.80, 0.12], w);
    }
    else if (ch == "星") {
        // 日
        stroke_line([0.26, 0.86], [0.74, 0.86], w);
        stroke_line([0.74, 0.86], [0.74, 0.56], w);
        stroke_line([0.74, 0.56], [0.26, 0.56], w);
        stroke_line([0.26, 0.56], [0.26, 0.86], w);
        stroke_line([0.26, 0.71], [0.74, 0.71], w);
        // 生
        stroke_line([0.30, 0.50], [0.22, 0.34], w);
        stroke_line([0.24, 0.40], [0.76, 0.40], w);
        stroke_line([0.24, 0.26], [0.76, 0.26], w);
        stroke_line([0.16, 0.14], [0.84, 0.14], w);
        stroke_line([0.50, 0.52], [0.50, 0.14], w);
    }
    else if (ch == "月") {
        stroke_line([0.28, 0.86], [0.72, 0.86], w);
        stroke_line([0.28, 0.86], [0.22, 0.14], w);
        stroke_line([0.72, 0.86], [0.72, 0.14], w);
        stroke_line([0.72, 0.14], [0.60, 0.22], w);
        stroke_line([0.28, 0.62], [0.72, 0.62], w);
        stroke_line([0.26, 0.40], [0.72, 0.40], w);
    }
    else if (ch == "兔") {
        stroke_line([0.46, 0.88], [0.26, 0.76], w);
        stroke_line([0.44, 0.82], [0.66, 0.82], w);
        stroke_line([0.66, 0.82], [0.56, 0.68], w);
        // 口
        stroke_line([0.24, 0.66], [0.76, 0.66], w);
        stroke_line([0.76, 0.66], [0.76, 0.46], w);
        stroke_line([0.76, 0.46], [0.24, 0.46], w);
        stroke_line([0.24, 0.46], [0.24, 0.66], w);
        stroke_line([0.50, 0.66], [0.50, 0.46], w);
        // 撇與豎彎鉤
        stroke_line([0.42, 0.46], [0.18, 0.14], w);
        stroke_line([0.56, 0.46], [0.56, 0.16], w);
        stroke_line([0.56, 0.16], [0.84, 0.16], w);
        stroke_line([0.84, 0.16], [0.84, 0.28], w);
        stroke_line([0.68, 0.36], [0.78, 0.28], w);
    }
    else if (ch == "熊") {
        // 能
        stroke_line([0.30, 0.86], [0.18, 0.72], w);
        stroke_line([0.18, 0.72], [0.44, 0.72], w);
        stroke_line([0.40, 0.78], [0.46, 0.68], w);
        stroke_line([0.20, 0.62], [0.42, 0.62], w);
        stroke_line([0.42, 0.62], [0.42, 0.32], w);
        stroke_line([0.20, 0.62], [0.20, 0.32], w);
        stroke_line([0.20, 0.48], [0.42, 0.48], w);
        // 雙匕
        stroke_line([0.78, 0.82], [0.58, 0.72], w);
        stroke_line([0.56, 0.86], [0.56, 0.64], w);
        stroke_line([0.56, 0.64], [0.82, 0.64], w);
        stroke_line([0.78, 0.52], [0.58, 0.42], w);
        stroke_line([0.56, 0.56], [0.56, 0.34], w);
        stroke_line([0.56, 0.34], [0.82, 0.34], w);
        // 四點底
        stroke_line([0.20, 0.22], [0.14, 0.12], w);
        stroke_line([0.38, 0.22], [0.38, 0.12], w);
        stroke_line([0.58, 0.22], [0.60, 0.12], w);
        stroke_line([0.78, 0.22], [0.84, 0.12], w);
    }
    else if (ch == "貓") {
        // 反犬旁
        stroke_line([0.36, 0.82], [0.16, 0.64], w);
        stroke_line([0.20, 0.78], [0.32, 0.14], w);
        stroke_line([0.32, 0.14], [0.22, 0.22], w);
        stroke_line([0.30, 0.52], [0.14, 0.34], w);
        // 苗
        stroke_line([0.42, 0.76], [0.88, 0.76], w);
        stroke_line([0.54, 0.88], [0.54, 0.66], w);
        stroke_line([0.76, 0.88], [0.76, 0.66], w);
        stroke_line([0.46, 0.58], [0.84, 0.58], w);
        stroke_line([0.84, 0.58], [0.84, 0.18], w);
        stroke_line([0.84, 0.18], [0.46, 0.18], w);
        stroke_line([0.46, 0.18], [0.46, 0.58], w);
        stroke_line([0.65, 0.58], [0.65, 0.18], w);
        stroke_line([0.46, 0.38], [0.84, 0.38], w);
    }
    else if (ch == "家") {
        stroke_line([0.48, 0.90], [0.54, 0.80], w);
        stroke_line([0.16, 0.76], [0.84, 0.76], w);
        stroke_line([0.16, 0.76], [0.16, 0.62], w);
        stroke_line([0.84, 0.76], [0.84, 0.62], w);
        stroke_line([0.26, 0.64], [0.74, 0.64], w);
        stroke_line([0.50, 0.64], [0.24, 0.48], w);
        stroke_line([0.44, 0.54], [0.56, 0.14], w);
        stroke_line([0.56, 0.14], [0.44, 0.22], w);
        stroke_line([0.48, 0.48], [0.20, 0.32], w);
        stroke_line([0.52, 0.36], [0.20, 0.18], w);
        stroke_line([0.78, 0.52], [0.56, 0.38], w);
        stroke_line([0.54, 0.42], [0.84, 0.18], w);
    }
    else if (ch == "好") {
        // 女
        stroke_line([0.28, 0.84], [0.16, 0.42], w);
        stroke_line([0.16, 0.42], [0.44, 0.18], w);
        stroke_line([0.40, 0.62], [0.16, 0.16], w);
        stroke_line([0.12, 0.62], [0.46, 0.62], w);
        // 子
        stroke_line([0.52, 0.78], [0.82, 0.78], w);
        stroke_line([0.82, 0.78], [0.68, 0.62], w);
        stroke_line([0.68, 0.62], [0.68, 0.14], w);
        stroke_line([0.68, 0.14], [0.56, 0.22], w);
        stroke_line([0.48, 0.48], [0.88, 0.48], w);
    }
    else if (ch == "運") {
        // 軍
        stroke_line([0.42, 0.84], [0.86, 0.84], w);
        stroke_line([0.42, 0.84], [0.42, 0.72], w);
        stroke_line([0.86, 0.84], [0.86, 0.72], w);
        stroke_line([0.46, 0.72], [0.82, 0.72], w);
        stroke_line([0.48, 0.60], [0.80, 0.60], w);
        stroke_line([0.80, 0.60], [0.80, 0.40], w);
        stroke_line([0.80, 0.40], [0.48, 0.40], w);
        stroke_line([0.48, 0.40], [0.48, 0.60], w);
        stroke_line([0.48, 0.50], [0.80, 0.50], w);
        stroke_line([0.42, 0.28], [0.86, 0.28], w);
        stroke_line([0.64, 0.78], [0.64, 0.18], w);
        // 辶
        stroke_line([0.18, 0.82], [0.28, 0.72], w);
        stroke_line([0.14, 0.56], [0.28, 0.56], w);
        stroke_line([0.28, 0.56], [0.20, 0.36], w);
        stroke_line([0.20, 0.36], [0.30, 0.24], w);
        stroke_line([0.14, 0.18], [0.32, 0.22], w);
        stroke_line([0.32, 0.22], [0.88, 0.12], w);
    }
    else if (ch == "發") {
        stroke_line([0.22, 0.84], [0.44, 0.84], w);
        stroke_line([0.44, 0.84], [0.20, 0.56], w);
        stroke_line([0.20, 0.72], [0.32, 0.64], w);
        stroke_line([0.78, 0.84], [0.56, 0.66], w);
        stroke_line([0.58, 0.84], [0.84, 0.56], w);
        // 弓與殳
        stroke_line([0.24, 0.52], [0.44, 0.52], w);
        stroke_line([0.44, 0.52], [0.44, 0.38], w);
        stroke_line([0.44, 0.38], [0.24, 0.38], w);
        stroke_line([0.24, 0.38], [0.24, 0.24], w);
        stroke_line([0.24, 0.24], [0.44, 0.24], w);
        stroke_line([0.44, 0.24], [0.40, 0.12], w);
        stroke_line([0.56, 0.54], [0.74, 0.54], w);
        stroke_line([0.56, 0.54], [0.54, 0.38], w);
        stroke_line([0.74, 0.54], [0.74, 0.40], w);
        stroke_line([0.74, 0.40], [0.84, 0.40], w);
        stroke_line([0.54, 0.32], [0.78, 0.32], w);
        stroke_line([0.78, 0.32], [0.52, 0.12], w);
        stroke_line([0.56, 0.28], [0.82, 0.12], w);
    }
    else if (ch == "財") {
        // 貝
        stroke_line([0.16, 0.82], [0.44, 0.82], w);
        stroke_line([0.44, 0.82], [0.44, 0.32], w);
        stroke_line([0.44, 0.32], [0.16, 0.32], w);
        stroke_line([0.16, 0.32], [0.16, 0.82], w);
        stroke_line([0.16, 0.65], [0.44, 0.65], w);
        stroke_line([0.16, 0.48], [0.44, 0.48], w);
        stroke_line([0.24, 0.26], [0.14, 0.12], w);
        stroke_line([0.36, 0.26], [0.46, 0.12], w);
        // 才
        stroke_line([0.52, 0.66], [0.88, 0.66], w);
        stroke_line([0.74, 0.86], [0.74, 0.14], w);
        stroke_line([0.74, 0.14], [0.62, 0.22], w);
        stroke_line([0.74, 0.58], [0.50, 0.28], w);
    }
    else if (ch == "平") {
        stroke_line([0.20, 0.82], [0.80, 0.82], w);
        stroke_line([0.26, 0.68], [0.36, 0.54], w);
        stroke_line([0.74, 0.68], [0.64, 0.54], w);
        stroke_line([0.14, 0.44], [0.86, 0.44], w);
        stroke_line([0.50, 0.82], [0.50, 0.14], w);
    }
    else if (ch == "喜") {
        stroke_line([0.22, 0.84], [0.78, 0.84], w);
        stroke_line([0.50, 0.90], [0.50, 0.72], w);
        stroke_line([0.28, 0.72], [0.72, 0.72], w);
        stroke_line([0.30, 0.62], [0.70, 0.62], w);
        stroke_line([0.70, 0.62], [0.70, 0.50], w);
        stroke_line([0.70, 0.50], [0.30, 0.50], w);
        stroke_line([0.30, 0.50], [0.30, 0.62], w);
        stroke_line([0.16, 0.38], [0.84, 0.38], w);
        stroke_line([0.28, 0.28], [0.72, 0.28], w);
        stroke_line([0.72, 0.28], [0.72, 0.14], w);
        stroke_line([0.72, 0.14], [0.28, 0.14], w);
        stroke_line([0.28, 0.14], [0.28, 0.28], w);
    }
    else {
        // 若輸入英文字母、數字或未收錄字元，自動呼叫系統預設字體補齊
        translate([0.08, 0.50])
            text(ch, size=0.72, font="Liberation Sans:style=Bold", halign="left", valign="center");
    }
}

// 渲染整串文字（自動支援中英混合與逐字排版）
module render_builtin_tc_string(str, sz) {
    translate([0, -sz * 0.5])
        scale([sz, sz])
            for (i = [0 : len(str) - 1]) {
                ch = str[i];
                // 判斷是否為 ASCII 英數半形字元，調整字距
                is_ascii = (ord(ch) < 128);
                x_step = is_ascii ? 0.62 : 1.05;
                // 累加前方字元寬度
                x_pos = (i == 0) ? 0 : sum_width(str, i - 1);
                translate([x_pos, 0])
                    builtin_tc_char(ch);
            }
}

function sum_width(str, idx) =
    (idx < 0) ? 0 :
    ((ord(str[idx]) < 128 ? 0.62 : 1.05) + sum_width(str, idx - 1));


/* -------------------------------------------------------- */
/* 52 種 2D 圖案幾何模組庫（含雙色柴犬、青蛙與剪影外框款）        */
/* -------------------------------------------------------- */

module shape_flower_2d(s) {
    petals = 6;
    union() {
        for(i = [0:petals-1])
            rotate(i*(360/petals))
                hull() {
                    translate([s*0.38, 0]) circle(r=s*0.16);
                    translate([s*0.10, 0]) circle(r=s*0.08);
                }
        circle(r=s*0.18);
    }
}

/* --- 1. 柴犬正面（Shiba_Front） --- */
module shape_shiba_front_2d(s) {
    union() {
        hull() {
            translate([0,       s*0.24]) scale([1.05, 0.90]) circle(r=s*0.23);
            translate([-s*0.06, s*0.12]) scale([1.15, 0.85]) circle(r=s*0.22);
            translate([ s*0.06, s*0.12]) scale([1.15, 0.85]) circle(r=s*0.22);
            translate([0,       s*0.04]) scale([1.10, 0.80]) circle(r=s*0.16);
        }
        for (dir = [-1, 1]) {
            offset(r = s*0.024)
                polygon([
                    [dir*s*0.25, s*0.26],
                    [dir*s*0.21, s*0.50],
                    [dir*s*0.08, s*0.36]
                ]);
        }
        hull() {
            translate([0,  s*0.02]) scale([1.05, 0.85]) circle(r=s*0.19);
            translate([0, -s*0.20]) scale([1.18, 0.92]) circle(r=s*0.22);
        }
        for (dir = [-1, 1]) {
            hull() {
                translate([dir*s*0.11, -s*0.12]) circle(r=s*0.072);
                translate([dir*s*0.13, -s*0.38]) circle(r=s*0.058);
            }
            translate([dir*s*0.13, -s*0.40]) scale([1.25, 0.82]) circle(r=s*0.062);

            hull() {
                translate([dir*s*0.18, -s*0.18]) circle(r=s*0.085);
                translate([dir*s*0.26, -s*0.26]) circle(r=s*0.075);
                translate([dir*s*0.22, -s*0.36]) circle(r=s*0.055);
            }
            translate([dir*s*0.24, -s*0.37]) scale([1.25, 0.80]) circle(r=s*0.055);
        }
        hull() {
            translate([s*0.22, -s*0.16]) circle(r=s*0.075);
            translate([s*0.33, -s*0.14]) circle(r=s*0.085);
            translate([s*0.31, -s*0.26]) circle(r=s*0.070);
        }
    }
}

module shape_shiba_front_eyes_2d(s) {
    difference() {
        union() {
            translate([-s*0.105, s*0.215]) circle(r=s*0.044);
            translate([ s*0.105, s*0.215]) circle(r=s*0.044);
        }
        translate([-s*0.120, s*0.230]) circle(r=s*0.013);
        translate([ s*0.090, s*0.230]) circle(r=s*0.013);
    }
}

module shape_shiba_front_belly_2d(s) {
    intersection() {
        offset(r = -s*0.008) shape_shiba_front_2d(s);
        difference() {
            union() {
                for (dir = [-1, 1]) {
                    offset(r = s*0.010)
                        polygon([
                            [dir*s*0.22, s*0.30],
                            [dir*s*0.20, s*0.45],
                            [dir*s*0.11, s*0.36]
                        ]);
                }
                translate([-s*0.085, s*0.30]) rotate(24)  scale([1.25, 0.85]) circle(r=s*0.025);
                translate([ s*0.085, s*0.30]) rotate(-24) scale([1.25, 0.85]) circle(r=s*0.025);
                translate([-s*0.120, s*0.230]) circle(r=s*0.013);
                translate([ s*0.090, s*0.230]) circle(r=s*0.013);
                union() {
                    translate([0, s*0.165]) scale([1.15, 1.0]) circle(r=s*0.072);
                    translate([-s*0.135, s*0.115]) scale([1.20, 0.96]) circle(r=s*0.120);
                    translate([ s*0.135, s*0.115]) scale([1.20, 0.96]) circle(r=s*0.120);
                    hull() {
                        translate([-s*0.12, s*0.08]) circle(r=s*0.095);
                        translate([0,        s*0.03]) circle(r=s*0.095);
                        translate([ s*0.12, s*0.08]) circle(r=s*0.095);
                    }
                }
                union() {
                    hull() {
                        translate([-s*0.14, -s*0.05]) circle(r=s*0.048);
                        translate([-s*0.06, -s*0.08]) circle(r=s*0.065);
                        translate([0,       -s*0.13]) circle(r=s*0.065);
                    }
                    hull() {
                        translate([ s*0.14, -s*0.05]) circle(r=s*0.048);
                        translate([ s*0.06, -s*0.08]) circle(r=s*0.065);
                        translate([0,       -s*0.13]) circle(r=s*0.065);
                    }
                    hull() {
                        translate([-s*0.06, -s*0.11]) circle(r=s*0.055);
                        translate([ s*0.06, -s*0.11]) circle(r=s*0.055);
                        translate([ s*0.065, -s*0.32]) circle(r=s*0.045);
                        translate([-s*0.065, -s*0.32]) circle(r=s*0.045);
                    }
                }
                for (dir = [-1, 1]) {
                    hull() {
                        translate([dir*s*0.125, -s*0.26]) circle(r=s*0.028);
                        translate([dir*s*0.13,  -s*0.38]) circle(r=s*0.050);
                    }
                    translate([dir*s*0.13, -s*0.40]) scale([1.22, 0.78]) circle(r=s*0.054);

                    hull() {
                        translate([dir*s*0.23, -s*0.29]) circle(r=s*0.025);
                        translate([dir*s*0.23, -s*0.36]) circle(r=s*0.042);
                    }
                    translate([dir*s*0.24, -s*0.37]) scale([1.20, 0.76]) circle(r=s*0.046);
                }
                difference() {
                    translate([s*0.33, -s*0.18]) scale([0.9, 1.2]) circle(r=s*0.075);
                    translate([s*0.29, -s*0.18]) scale([0.9, 1.2]) circle(r=s*0.065);
                }
            }
            translate([0, s*0.16]) scale([1.35, 0.85]) circle(r=s*0.026);
            hull() {
                translate([0, s*0.145]) circle(r=s*0.008);
                translate([0, s*0.112]) circle(r=s*0.008);
            }
            translate([-s*0.036, s*0.132])
                difference() {
                    circle(r=s*0.042);
                    circle(r=s*0.026);
                    translate([0, s*0.022]) square([s*0.10, s*0.05], center=true);
                }
            translate([ s*0.036, s*0.132])
                difference() {
                    circle(r=s*0.042);
                    circle(r=s*0.026);
                    translate([0, s*0.022]) square([s*0.10, s*0.05], center=true);
                }
            translate([0, s*0.095])
                difference() {
                    scale([1.25, 0.9]) circle(r=s*0.036);
                    scale([1.25, 0.9]) circle(r=s*0.020);
                    translate([0, s*0.022]) square([s*0.12, s*0.05], center=true);
                }
            for (px = [-s*0.152, -s*0.118, s*0.118, s*0.152]) {
                hull() {
                    translate([px, -s*0.395]) circle(r=s*0.005);
                    translate([px, -s*0.435]) circle(r=s*0.005);
                }
            }
            for (px = [-s*0.262, -s*0.232, s*0.232, s*0.262]) {
                hull() {
                    translate([px, -s*0.365]) circle(r=s*0.005);
                    translate([px, -s*0.402]) circle(r=s*0.005);
                }
            }
        }
    }
}

/* --- 2. 柴犬背面（Shiba_Back） --- */
module shape_shiba_back_2d(s) {
    union() {
        hull() {
            translate([-s*0.06, s*0.24]) scale([1.05, 0.92]) circle(r=s*0.21);
            translate([-s*0.04, s*0.12]) scale([1.08, 0.88]) circle(r=s*0.20);
            translate([-s*0.24, s*0.16]) circle(r=s*0.065);
            translate([-s*0.22, s*0.09]) circle(r=s*0.075);
        }
        offset(r = s*0.022) {
            polygon([[-s*0.24, s*0.28], [-s*0.21, s*0.49], [-s*0.08, s*0.38]]);
            polygon([[ s*0.02, s*0.38], [ s*0.14, s*0.49], [ s*0.15, s*0.26]]);
        }
        hull() {
            translate([-s*0.05,  s*0.04]) circle(r=s*0.19);
            translate([ s*0.06, -s*0.06]) circle(r=s*0.21);
            translate([ s*0.12, -s*0.24]) circle(r=s*0.22);
            translate([-s*0.06, -s*0.24]) circle(r=s*0.20);
        }
        hull() {
            translate([-s*0.19, -s*0.08]) circle(r=s*0.065);
            translate([-s*0.22, -s*0.32]) circle(r=s*0.052);
        }
        translate([-s*0.24, -s*0.34]) scale([1.35, 0.80]) circle(r=s*0.055);
        hull() {
            translate([-s*0.04, -s*0.28]) circle(r=s*0.075);
            translate([ s*0.02, -s*0.41]) circle(r=s*0.068);
        }
        translate([s*0.02, -s*0.42]) scale([1.22, 0.88]) circle(r=s*0.068);
        hull() {
            translate([s*0.22, -s*0.28]) circle(r=s*0.072);
            translate([s*0.16, -s*0.39]) circle(r=s*0.065);
        }
        translate([s*0.16, -s*0.40]) scale([1.20, 0.88]) circle(r=s*0.064);
        hull() {
            translate([s*0.12, -s*0.14]) circle(r=s*0.10);
            translate([s*0.20,  s*0.03]) circle(r=s*0.175);
        }
    }
}

module shape_shiba_back_belly_2d(s) {
    intersection() {
        offset(r = -s*0.008) shape_shiba_back_2d(s);
        difference() {
            union() {
                translate([-s*0.255, s*0.245]) rotate(40) scale([0.65, 1.35]) circle(r=s*0.020);
                hull() {
                    translate([-s*0.25, s*0.14]) circle(r=s*0.068);
                    translate([-s*0.18, s*0.12]) circle(r=s*0.075);
                    translate([-s*0.20, s*0.04]) circle(r=s*0.062);
                }
                hull() {
                    translate([-s*0.17, -s*0.14]) circle(r=s*0.032);
                    translate([-s*0.15, -s*0.22]) circle(r=s*0.028);
                }
                hull() {
                    translate([-s*0.21, -s*0.25]) circle(r=s*0.028);
                    translate([-s*0.22, -s*0.32]) circle(r=s*0.046);
                }
                translate([-s*0.24, -s*0.34]) scale([1.30, 0.76]) circle(r=s*0.050);
                difference() {
                    translate([s*0.205, s*0.03]) circle(r=s*0.155);
                    translate([s*0.14,  s*0.02]) circle(r=s*0.095);
                    translate([s*0.04, -s*0.06]) circle(r=s*0.135);
                }
                hull() {
                    translate([s*0.12, -s*0.16]) circle(r=s*0.095);
                    translate([s*0.03, -s*0.24]) circle(r=s*0.090);
                    translate([s*0.18, -s*0.24]) circle(r=s*0.090);
                    translate([s*0.08, -s*0.31]) circle(r=s*0.085);
                }
                hull() {
                    translate([-s*0.03, -s*0.29]) circle(r=s*0.046);
                    translate([ s*0.02, -s*0.41]) circle(r=s*0.056);
                }
                translate([s*0.02, -s*0.42]) scale([1.18, 0.84]) circle(r=s*0.058);
                hull() {
                    translate([s*0.21, -s*0.29]) circle(r=s*0.044);
                    translate([s*0.16, -s*0.39]) circle(r=s*0.052);
                }
                translate([s*0.16, -s*0.40]) scale([1.16, 0.84]) circle(r=s*0.054);
            }
            translate([s*0.105, -s*0.235]) {
                rotate(45)  square([s*0.036, s*0.009], center=true);
                rotate(-45) square([s*0.036, s*0.009], center=true);
            }
            translate([s*0.015, -s*0.382]) {
                hull() {
                    translate([-s*0.011,  s*0.006]) circle(r=s*0.013);
                    translate([ s*0.011,  s*0.006]) circle(r=s*0.013);
                    translate([ 0,       -s*0.014]) circle(r=s*0.009);
                }
                translate([-s*0.026, -s*0.016]) circle(r=s*0.0075);
                translate([-s*0.010, -s*0.026]) circle(r=s*0.0080);
                translate([ s*0.008, -s*0.026]) circle(r=s*0.0080);
                translate([ s*0.024, -s*0.016]) circle(r=s*0.0075);
            }
            translate([s*0.165, -s*0.365]) {
                hull() {
                    translate([-s*0.010,  s*0.006]) circle(r=s*0.012);
                    translate([ s*0.010,  s*0.006]) circle(r=s*0.012);
                    translate([ 0,       -s*0.013]) circle(r=s*0.0085);
                }
                translate([-s*0.024, -s*0.015]) circle(r=s*0.0070);
                translate([-s*0.009, -s*0.024]) circle(r=s*0.0075);
                translate([ s*0.008, -s*0.024]) circle(r=s*0.0075);
                translate([ s*0.022, -s*0.015]) circle(r=s*0.0070);
            }
        }
    }
}

/* --- 3. 柴犬剪影（Shiba_Silhouette） --- */
module shape_shiba_silhouette_2d(s) {
    union() {
        hull() {
            translate([-s*0.17, s*0.24]) scale([1.08, 0.96]) circle(r=s*0.15);
            translate([-s*0.21, s*0.18]) circle(r=s*0.10);
            translate([-s*0.13, s*0.14]) circle(r=s*0.13);
        }
        offset(r = s*0.016) {
            polygon([[-s*0.28, s*0.28], [-s*0.26, s*0.46], [-s*0.17, s*0.35]]);
            polygon([[-s*0.13, s*0.34], [-s*0.06, s*0.45], [-s*0.05, s*0.26]]);
        }
        hull() {
            translate([-s*0.16,  s*0.08]) circle(r=s*0.14);
            translate([-s*0.14, -s*0.04]) circle(r=s*0.15);
            translate([ s*0.16, -s*0.02]) circle(r=s*0.14);
            translate([ s*0.20, -s*0.12]) circle(r=s*0.13);
            translate([ 0.00,   -s*0.08]) circle(r=s*0.12);
        }
        translate([s*0.20, s*0.16]) circle(r=s*0.145);
        hull() {
            translate([s*0.16, s*0.02]) circle(r=s*0.08);
            translate([s*0.20, s*0.16]) circle(r=s*0.10);
        }
        hull() {
            translate([-s*0.22, -s*0.08]) circle(r=s*0.048);
            translate([-s*0.22, -s*0.34]) circle(r=s*0.032);
        }
        translate([-s*0.24, -s*0.35]) scale([1.35, 0.75]) circle(r=s*0.034);
        hull() {
            translate([-s*0.09, -s*0.08]) circle(r=s*0.058);
            translate([-s*0.09, -s*0.38]) circle(r=s*0.036);
        }
        translate([-s*0.11, -s*0.39]) scale([1.40, 0.78]) circle(r=s*0.038);
        hull() {
            translate([s*0.07, -s*0.06]) circle(r=s*0.065);
            translate([s*0.13, -s*0.20]) circle(r=s*0.042);
        }
        hull() {
            translate([s*0.13, -s*0.20]) circle(r=s*0.038);
            translate([s*0.12, -s*0.34]) circle(r=s*0.030);
        }
        translate([s*0.10, -s*0.35]) scale([1.35, 0.75]) circle(r=s*0.032);
        hull() {
            translate([s*0.22, -s*0.10]) circle(r=s*0.075);
            translate([s*0.28, -s*0.24]) circle(r=s*0.045);
        }
        hull() {
            translate([s*0.28, -s*0.24]) circle(r=s*0.040);
            translate([s*0.27, -s*0.38]) circle(r=s*0.032);
        }
        translate([s*0.25, -s*0.39]) scale([1.35, 0.78]) circle(r=s*0.034);
    }
}

/* --- 4. 青蛙剪影（Frog_Silhouette） --- */
module shape_frog_silhouette_2d(s) {
    rotate(-18)
        union() {
            hull() {
                translate([0,  s*0.16]) scale([1.05, 0.95]) circle(r=s*0.125);
                translate([0,  s*0.00]) scale([1.15, 1.00]) circle(r=s*0.155);
                translate([0, -s*0.15]) scale([1.10, 0.85]) circle(r=s*0.135);
            }
            translate([-s*0.095, s*0.20]) circle(r=s*0.052);
            translate([ s*0.075, s*0.21]) circle(r=s*0.048);

            hull() {
                translate([-s*0.10, s*0.10]) circle(r=s*0.034);
                translate([-s*0.24, s*0.13]) circle(r=s*0.030);
            }
            hull() {
                translate([-s*0.24, s*0.13]) circle(r=s*0.030);
                translate([-s*0.22, s*0.28]) circle(r=s*0.032);
            }
            frog_toes([-s*0.22, s*0.28], 95, s*0.115, 4);

            hull() {
                translate([s*0.11, s*0.05]) circle(r=s*0.034);
                translate([s*0.21, s*0.02]) circle(r=s*0.030);
            }
            hull() {
                translate([s*0.21, s*0.02]) circle(r=s*0.030);
                translate([s*0.27, s*0.13]) circle(r=s*0.032);
            }
            frog_toes([s*0.27, s*0.13], 25, s*0.115, 4);

            hull() {
                translate([-s*0.10, -s*0.12]) circle(r=s*0.052);
                translate([-s*0.22, -s*0.22]) circle(r=s*0.048);
            }
            hull() {
                translate([-s*0.22, -s*0.22]) circle(r=s*0.045);
                translate([-s*0.28, -s*0.10]) circle(r=s*0.034);
            }
            frog_toes([-s*0.28, -s*0.10], 145, s*0.13, 5);

            hull() {
                translate([s*0.08, -s*0.14]) circle(r=s*0.052);
                translate([s*0.26, -s*0.10]) circle(r=s*0.048);
            }
            hull() {
                translate([s*0.26, -s*0.10]) circle(r=s*0.045);
                translate([s*0.16, -s*0.28]) circle(r=s*0.042);
            }
            hull() {
                translate([s*0.16, -s*0.28]) circle(r=s*0.038);
                translate([s*0.30, -s*0.16]) circle(r=s*0.034);
            }
            frog_toes([s*0.30, -s*0.16], 15, s*0.135, 5);
        }
}

/* -------------------------------------------------------- */
/* 雙色青蛙正面 (Bullfrog_Front) 與 青蛙背面 (Bullfrog_Back)     */
/* -------------------------------------------------------- */

module shape_bullfrog_front_2d(s) {
    union() {
        hull() {
            translate([-s*0.12, s*0.22]) circle(r=s*0.16);
            translate([ s*0.12, s*0.22]) circle(r=s*0.16);
            translate([-s*0.22, s*0.11]) circle(r=s*0.13);
            translate([ s*0.22, s*0.11]) circle(r=s*0.13);
        }
        translate([-s*0.19, s*0.33]) circle(r=s*0.115);
        translate([ s*0.19, s*0.33]) circle(r=s*0.115);
        hull() {
            translate([0,  s*0.02]) scale([1.22, 0.92]) circle(r=s*0.24);
            translate([0, -s*0.16]) scale([1.28, 0.96]) circle(r=s*0.26);
        }
        for (dir = [-1, 1]) {
            hull() {
                translate([dir*s*0.22, -s*0.12]) circle(r=s*0.11);
                translate([dir*s*0.37, -s*0.22]) circle(r=s*0.105);
            }
            hull() {
                translate([dir*s*0.37, -s*0.22]) circle(r=s*0.095);
                translate([dir*s*0.28, -s*0.36]) circle(r=s*0.065);
            }
            frog_toes([dir*s*0.28, -s*0.36], dir == 1 ? -15 : 195, s*0.15, 5);

            hull() {
                translate([dir*s*0.22, -s*0.04]) circle(r=s*0.065);
                translate([dir*s*0.17, -s*0.36]) circle(r=s*0.052);
            }
            frog_toes([dir*s*0.17, -s*0.36], dir == 1 ? -35 : 215, s*0.125, 4);
        }
    }
}

module shape_bullfrog_front_spots_2d(s) {
    intersection() {
        offset(r = -s*0.008) shape_bullfrog_front_2d(s);
        union() {
            for (dir = [-1, 1]) {
                difference() {
                    translate([dir*s*0.19, s*0.33]) circle(r=s*0.068);
                    translate([dir*s*0.19 - s*0.022, s*0.352]) circle(r=s*0.020);
                }
            }
            hull() {
                translate([-s*0.04, s*0.35]) circle(r=s*0.025);
                translate([ s*0.04, s*0.36]) circle(r=s*0.022);
                translate([ 0,      s*0.32]) circle(r=s*0.020);
            }
            for (dir = [-1, 1]) {
                translate([dir*s*0.08, s*0.26]) circle(r=s*0.022);
                translate([dir*s*0.27, s*0.18]) rotate(dir*25) scale([0.65, 1.35]) circle(r=s*0.032);
            }
            difference() {
                translate([0, -s*0.04]) scale([1.55, 0.72]) circle(r=s*0.19);
                translate([0, -s*0.065]) scale([1.55, 0.72]) circle(r=s*0.19);
                translate([0, -s*0.15]) square([s*0.70, s*0.42], center=true);
            }
            difference() {
                translate([0, -s*0.02]) scale([1.2, 0.7]) circle(r=s*0.09);
                translate([0, -s*0.035]) scale([1.2, 0.7]) circle(r=s*0.09);
                translate([0, -s*0.10]) square([s*0.30, s*0.20], center=true);
            }
            for (dir = [-1, 1]) {
                hull() {
                    translate([dir*s*0.13, -s*0.02]) circle(r=s*0.038);
                    translate([dir*s*0.07, -s*0.11]) circle(r=s*0.045);
                    translate([dir*s*0.05, -s*0.22]) circle(r=s*0.042);
                    translate([dir*s*0.03, -s*0.30]) circle(r=s*0.024);
                }
                hull() {
                    translate([dir*s*0.06, -s*0.34]) circle(r=s*0.026);
                    translate([dir*s*0.13, -s*0.32]) circle(r=s*0.024);
                }
                translate([dir*s*0.26, -s*0.12]) rotate(dir*20) scale([0.75, 1.35]) circle(r=s*0.032);
                translate([dir*s*0.23, -s*0.24]) circle(r=s*0.024);
                translate([dir*s*0.38, -s*0.18]) rotate(-dir*15) scale([0.7, 1.4]) circle(r=s*0.030);
            }
        }
    }
}

module shape_bullfrog_back_2d(s) {
    union() {
        hull() {
            translate([0,  s*0.24]) scale([1.02, 0.85]) circle(r=s*0.19);
            translate([0,  s*0.04]) scale([1.22, 0.95]) circle(r=s*0.26);
            translate([0, -s*0.16]) scale([1.34, 0.92]) circle(r=s*0.29);
            translate([0, -s*0.32]) scale([1.15, 0.68]) circle(r=s*0.18);
        }
        translate([-s*0.16, s*0.35]) circle(r=s*0.10);
        translate([ s*0.16, s*0.35]) circle(r=s*0.10);
        for (dir = [-1, 1]) {
            hull() {
                translate([dir*s*0.22,  s*0.22]) circle(r=s*0.075);
                translate([dir*s*0.28,  s*0.08]) circle(r=s*0.065);
                translate([dir*s*0.34, -s*0.10]) circle(r=s*0.060);
            }
            hull() {
                translate([dir*s*0.18, -s*0.19]) circle(r=s*0.115);
                translate([dir*s*0.38, -s*0.23]) circle(r=s*0.115);
            }
            hull() {
                translate([dir*s*0.38, -s*0.23]) circle(r=s*0.100);
                translate([dir*s*0.24, -s*0.38]) circle(r=s*0.075);
            }
            frog_toes([dir*s*0.26, -s*0.38], dir == 1 ? -5 : 185, s*0.16, 5);
        }
    }
}

module shape_bullfrog_back_spots_2d(s) {
    intersection() {
        offset(r = -s*0.008) shape_bullfrog_back_2d(s);
        union() {
            for (dir = [-1, 1]) {
                translate([dir*s*0.22, s*0.35]) scale([0.65, 1.15]) circle(r=s*0.042);
                hull() {
                    translate([dir*s*0.14, s*0.27]) circle(r=s*0.032);
                    translate([dir*s*0.08, s*0.19]) circle(r=s*0.034);
                    translate([dir*s*0.13, s*0.11]) circle(r=s*0.030);
                }
                hull() {
                    translate([dir*s*0.13, s*0.13]) circle(r=s*0.026);
                    translate([dir*s*0.15, s*0.04]) circle(r=s*0.032);
                    translate([dir*s*0.09, s*0.02]) circle(r=s*0.024);
                }
                hull() {
                    translate([dir*s*0.045, -s*0.01]) circle(r=s*0.028);
                    translate([dir*s*0.14,  -s*0.03]) circle(r=s*0.034);
                    translate([dir*s*0.19,   s*0.02]) circle(r=s*0.034);
                    translate([dir*s*0.24,  -s*0.07]) circle(r=s*0.042);
                    translate([dir*s*0.10,  -s*0.08]) circle(r=s*0.032);
                    translate([dir*s*0.045, -s*0.08]) circle(r=s*0.024);
                }
                hull() {
                    translate([dir*s*0.045, -s*0.11]) circle(r=s*0.020);
                    translate([dir*s*0.075, -s*0.19]) circle(r=s*0.024);
                    translate([dir*s*0.045, -s*0.29]) circle(r=s*0.016);
                }
                hull() {
                    translate([dir*s*0.18, -s*0.14]) circle(r=s*0.032);
                    translate([dir*s*0.13, -s*0.23]) circle(r=s*0.026);
                }
                difference() {
                    translate([dir*s*0.26, -s*0.30]) scale([1.30, 0.72]) circle(r=s*0.105);
                    translate([dir*s*0.26, -s*0.320]) scale([1.30, 0.72]) circle(r=s*0.105);
                    translate([dir*s*0.26, -s*0.36]) square([s*0.34, s*0.14], center=true);
                }
            }
        }
    }
}

module shape_star_2d(s) {
    points = 5;
    r1 = s * 0.55;
    r2 = s * 0.24;
    offset(r = s*0.05)
        polygon([
            for (i = [0:points*2-1])
                let(a = i * 180/points + 90)
                (i % 2 == 0 ? [r1*cos(a), r1*sin(a)] : [r2*cos(a), r2*sin(a)])
        ]);
}

module shape_heart_2d(s) {
    scale_f = s * 0.032;
    polygon([
        for (t = [0 : 2 : 360])
            [
                scale_f * 16 * pow(sin(t), 3),
                scale_f * (13*cos(t) - 5*cos(2*t) - 2*cos(3*t) - cos(4*t))
            ]
    ]);
}

module shape_crown_2d(s) {
    w = s * 0.52;
    h = s * 0.42;
    offset(r = s*0.03)
        union() {
            polygon([
                [-w*0.85, -h*0.7],
                [ w*0.85, -h*0.7],
                [ w*1.05,  h*0.55],
                [ w*0.45, -h*0.05],
                [ 0,       h*0.85],
                [-w*0.45, -h*0.05],
                [-w*1.05,  h*0.55]
            ]);
            translate([-w*1.05, h*0.62]) circle(r=s*0.065);
            translate([ 0,       h*0.92]) circle(r=s*0.075);
            translate([ w*1.05, h*0.62]) circle(r=s*0.065);
        }
}

module shape_paw_2d(s) {
    union() {
        hull() {
            translate([0, -s*0.12]) circle(r=s*0.24);
            translate([-s*0.14, -s*0.20]) circle(r=s*0.14);
            translate([ s*0.14, -s*0.20]) circle(r=s*0.14);
        }
        translate([-s*0.32,  s*0.08]) rotate(20)  scale([0.8, 1.15]) circle(r=s*0.11);
        translate([-s*0.12,  s*0.26]) rotate(8)   scale([0.8, 1.2])  circle(r=s*0.115);
        translate([ s*0.12,  s*0.26]) rotate(-8)  scale([0.8, 1.2])  circle(r=s*0.115);
        translate([ s*0.32,  s*0.08]) rotate(-20) scale([0.8, 1.15]) circle(r=s*0.11);
    }
}

module shape_bow_2d(s) {
    offset(r = s*0.03)
        union() {
            hull() {
                translate([-s*0.45,  s*0.28]) circle(r=s*0.10);
                translate([-s*0.45, -s*0.28]) circle(r=s*0.10);
                translate([-s*0.05,  0])      circle(r=s*0.08);
            }
            hull() {
                translate([ s*0.45,  s*0.28]) circle(r=s*0.10);
                translate([ s*0.45, -s*0.28]) circle(r=s*0.10);
                translate([ s*0.05,  0])      circle(r=s*0.08);
            }
            scale([0.85, 1.1]) circle(r=s*0.15);
        }
}

module shape_lightning_2d(s) {
    offset(r = s*0.02)
        polygon([
            [ s*0.12,  s*0.55],
            [-s*0.32,  s*0.02],
            [-s*0.04,  s*0.02],
            [-s*0.18, -s*0.55],
            [ s*0.32, -s*0.02],
            [ s*0.04, -s*0.02]
        ]);
}

module shape_moon_2d(s) {
    difference() {
        circle(r = s * 0.48);
        translate([s * 0.24, s * 0.14])
            circle(r = s * 0.40);
    }
}

module shape_clover_2d(s) {
    union() {
        for (i = [0:3]) {
            rotate(i * 90 + 45)
                union() {
                    translate([s*0.24,  s*0.08]) circle(r=s*0.15);
                    translate([s*0.24, -s*0.08]) circle(r=s*0.15);
                    hull() {
                        translate([s*0.24,  s*0.08]) circle(r=s*0.12);
                        translate([s*0.24, -s*0.08]) circle(r=s*0.12);
                        circle(r=s*0.06);
                    }
                }
        }
        hull() {
            translate([0, -s*0.1]) circle(r=s*0.04);
            translate([s*0.12, -s*0.52]) circle(r=s*0.035);
        }
    }
}

module shape_diamond_2d(s) {
    offset(r = s*0.02)
        polygon([
            [-s*0.32,  s*0.35],
            [ s*0.32,  s*0.35],
            [ s*0.52,  s*0.10],
            [ 0,      -s*0.48],
            [-s*0.52,  s*0.10]
        ]);
}

module shape_music_2d(s) {
    union() {
        translate([-s*0.22, -s*0.30]) rotate(20) scale([1.25, 0.9]) circle(r=s*0.13);
        translate([ s*0.22, -s*0.22]) rotate(20) scale([1.25, 0.9]) circle(r=s*0.13);
        translate([-s*0.11, -s*0.30]) square([s*0.08, s*0.65]);
        translate([ s*0.33, -s*0.22]) square([s*0.08, s*0.65]);
        polygon([
            [-s*0.11, s*0.25],
            [ s*0.41, s*0.35],
            [ s*0.41, s*0.48],
            [-s*0.11, s*0.38]
        ]);
    }
}

module shape_cloud_2d(s) {
    union() {
        hull() {
            translate([-s*0.32, -s*0.12]) circle(r=s*0.18);
            translate([ s*0.32, -s*0.12]) circle(r=s*0.18);
        }
        translate([-s*0.16,  s*0.08]) circle(r=s*0.22);
        translate([ s*0.14,  s*0.12]) circle(r=s*0.25);
        translate([-s*0.32, -s*0.12]) circle(r=s*0.18);
        translate([ s*0.32, -s*0.12]) circle(r=s*0.18);
    }
}

module shape_bear_2d(s) {
    union() {
        scale([1.12, 0.95]) circle(r=s*0.42);
        translate([-s*0.34, s*0.34]) circle(r=s*0.17);
        translate([ s*0.34, s*0.34]) circle(r=s*0.17);
    }
}

module shape_butterfly_2d(s) {
    union() {
        for (dir = [-1, 1]) {
            hull() {
                translate([dir*s*0.30, s*0.24]) circle(r=s*0.20);
                translate([dir*s*0.12, s*0.05]) circle(r=s*0.10);
            }
            hull() {
                translate([dir*s*0.24, -s*0.22]) circle(r=s*0.16);
                translate([dir*s*0.10, -s*0.05]) circle(r=s*0.08);
            }
        }
        scale([0.4, 2.2]) circle(r=s*0.16);
    }
}

module shape_apple_2d(s) {
    union() {
        hull() {
            translate([-s*0.14,  s*0.06]) circle(r=s*0.28);
            translate([-s*0.10, -s*0.22]) circle(r=s*0.20);
        }
        hull() {
            translate([ s*0.14,  s*0.06]) circle(r=s*0.28);
            translate([ s*0.10, -s*0.22]) circle(r=s*0.20);
        }
        hull() {
            translate([0, s*0.25]) circle(r=s*0.035);
            translate([s*0.05, s*0.48]) circle(r=s*0.03);
        }
        translate([s*0.16, s*0.40]) rotate(25) scale([1.6, 0.8]) circle(r=s*0.08);
    }
}

module shape_cat_2d(s) {
    offset(r = s*0.03)
        union() {
            scale([1.15, 0.92]) circle(r=s*0.40);
            polygon([[-s*0.44, s*0.10], [-s*0.36, s*0.52], [-s*0.12, s*0.30]]);
            polygon([[ s*0.44, s*0.10], [ s*0.36, s*0.52], [ s*0.12, s*0.30]]);
        }
}

module shape_rabbit_2d(s) {
    union() {
        translate([0, -s*0.18]) scale([1.12, 0.92]) circle(r=s*0.34);
        translate([-s*0.16, s*0.24]) rotate(8) scale([0.45, 1.45]) circle(r=s*0.24);
        translate([ s*0.16, s*0.24]) rotate(-8) scale([0.45, 1.45]) circle(r=s*0.24);
    }
}

module shape_dino_2d(s) {
    offset(r = s*0.025)
        union() {
            polygon([[-s*0.48, -s*0.25], [-s*0.18, -s*0.12], [-s*0.05, s*0.25], [s*0.18, s*0.25], [s*0.18, -s*0.25]]);
            translate([s*0.16, s*0.30]) scale([1.3, 0.85]) circle(r=s*0.18);
            translate([-s*0.08, -s*0.42]) square([s*0.10, s*0.22]);
            translate([ s*0.08, -s*0.42]) square([s*0.10, s*0.22]);
            translate([ s*0.18,  s*0.02]) square([s*0.14, s*0.07]);
            for (i = [0:2]) {
                translate([-s*0.14 - i*s*0.10, s*0.12 - i*s*0.11])
                    rotate(45) polygon([[-s*0.05, 0], [s*0.05, 0], [0, s*0.10]]);
            }
        }
}

module shape_rocket_2d(s) {
    offset(r = s*0.02)
        union() {
            hull() {
                translate([0,  s*0.50]) circle(r=s*0.03);
                translate([0,  s*0.15]) scale([1, 1.2]) circle(r=s*0.20);
                translate([0, -s*0.28]) square([s*0.32, s*0.05], center=true);
            }
            polygon([[-s*0.15, -s*0.05], [-s*0.34, -s*0.34], [-s*0.15, -s*0.28]]);
            polygon([[ s*0.15, -s*0.05], [ s*0.34, -s*0.34], [ s*0.15, -s*0.28]]);
            polygon([[-s*0.10, -s*0.30], [0, -s*0.52], [s*0.10, -s*0.30]]);
        }
}

module shape_shield_2d(s) {
    offset(r = s*0.04)
        polygon([[-s*0.40, s*0.42], [0, s*0.48], [s*0.40, s*0.42], [s*0.36, -s*0.05], [0, -s*0.50], [-s*0.36, -s*0.05]]);
}

module shape_icecream_2d(s) {
    union() {
        offset(r = s*0.02) polygon([[-s*0.24, -s*0.02], [s*0.24, -s*0.02], [0, -s*0.52]]);
        translate([-s*0.14, s*0.08]) circle(r=s*0.16);
        translate([ s*0.14, s*0.08]) circle(r=s*0.16);
        translate([ 0,      s*0.24]) circle(r=s*0.22);
    }
}

module shape_strawberry_2d(s) {
    union() {
        hull() {
            translate([-s*0.20,  s*0.18]) circle(r=s*0.18);
            translate([ s*0.20,  s*0.18]) circle(r=s*0.18);
            translate([ 0,      -s*0.42]) circle(r=s*0.08);
        }
        offset(r = s*0.015) polygon([[-s*0.26, s*0.34], [-s*0.10, s*0.24], [0, s*0.48], [s*0.10, s*0.24], [s*0.26, s*0.34], [0, s*0.18]]);
    }
}

module shape_cherry_2d(s) {
    union() {
        translate([-s*0.22, -s*0.22]) circle(r=s*0.20);
        translate([ s*0.22, -s*0.26]) circle(r=s*0.20);
        hull() { translate([-s*0.20, -s*0.05]) circle(r=s*0.03); translate([s*0.08, s*0.42]) circle(r=s*0.03); }
        hull() { translate([ s*0.20, -s*0.08]) circle(r=s*0.03); translate([s*0.08, s*0.42]) circle(r=s*0.03); }
        translate([s*0.22, s*0.38]) rotate(-15) scale([1.6, 0.8]) circle(r=s*0.09);
    }
}

module shape_sun_2d(s) {
    union() {
        circle(r=s*0.28);
        for (i = [0:7]) {
            rotate(i * 45) hull() { translate([s*0.34, 0]) circle(r=s*0.045); translate([s*0.48, 0]) circle(r=s*0.03); }
        }
    }
}

module shape_snowflake_2d(s) {
    union() {
        for (i = [0:5]) {
            rotate(i * 60) {
                hull() { circle(r=s*0.04); translate([s*0.48, 0]) circle(r=s*0.035); }
                translate([s*0.26, 0]) {
                    rotate(45) hull() { circle(r=s*0.03); translate([s*0.16, 0]) circle(r=s*0.025); }
                    rotate(-45) hull() { circle(r=s*0.03); translate([s*0.16, 0]) circle(r=s*0.025); }
                }
            }
        }
    }
}

module shape_unicorn_2d(s) {
    offset(r = s*0.025)
        union() {
            hull() { translate([-s*0.05, s*0.10]) circle(r=s*0.24); translate([s*0.28, -s*0.06]) circle(r=s*0.13); translate([-s*0.16, -s*0.32]) circle(r=s*0.20); }
            polygon([[s*0.04, s*0.28], [s*0.28, s*0.56], [s*0.16, s*0.22]]);
            polygon([[-s*0.12, s*0.26], [-s*0.14, s*0.44], [-s*0.02, s*0.30]]);
            hull() { translate([-s*0.24, s*0.22]) circle(r=s*0.12); translate([-s*0.36, -s*0.18]) circle(r=s*0.14); }
        }
}

module shape_penguin_2d(s) {
    union() {
        hull() { translate([0, s*0.18]) circle(r=s*0.28); translate([0, -s*0.16]) scale([1.15, 1]) circle(r=s*0.32); }
        translate([-s*0.32, -s*0.04]) rotate(25)  scale([0.45, 1.3]) circle(r=s*0.18);
        translate([ s*0.32, -s*0.04]) rotate(-25) scale([0.45, 1.3]) circle(r=s*0.18);
        translate([-s*0.16, -s*0.46]) scale([1.4, 0.6]) circle(r=s*0.10);
        translate([ s*0.16, -s*0.46]) scale([1.4, 0.6]) circle(r=s*0.10);
    }
}

module shape_dog_2d(s) {
    union() {
        scale([1.1, 0.95]) circle(r=s*0.38);
        translate([-s*0.38, -s*0.04]) rotate(15)  scale([0.55, 1.35]) circle(r=s*0.22);
        translate([ s*0.38, -s*0.04]) rotate(-15) scale([0.55, 1.35]) circle(r=s*0.22);
    }
}

module shape_donut_2d(s) {
    difference() { circle(r = s * 0.48); circle(r = s * 0.16); }
}

module shape_cupcake_2d(s) {
    union() {
        offset(r = s*0.02) polygon([[-s*0.34, -s*0.04], [s*0.34, -s*0.04], [s*0.24, -s*0.46], [-s*0.24, -s*0.46]]);
        hull() { translate([-s*0.28, s*0.04]) circle(r=s*0.14); translate([s*0.28, s*0.04]) circle(r=s*0.14); translate([0, s*0.26]) circle(r=s*0.20); }
        translate([0, s*0.44]) circle(r=s*0.08);
    }
}

module shape_coffee_2d(s) {
    union() {
        offset(r = s*0.04) polygon([[-s*0.34, s*0.16], [s*0.22, s*0.16], [s*0.18, -s*0.36], [-s*0.30, -s*0.36]]);
        difference() { translate([s*0.22, -s*0.08]) scale([1.1, 1.3]) circle(r=s*0.18); translate([s*0.22, -s*0.08]) scale([1.1, 1.3]) circle(r=s*0.09); }
        translate([-s*0.14, s*0.34]) scale([0.45, 1.4]) circle(r=s*0.08);
        translate([ s*0.04, s*0.36]) scale([0.45, 1.4]) circle(r=s*0.08);
    }
}

module shape_basketball_2d(s) {
    difference() {
        circle(r = s * 0.48);
        square([s*0.98, s*0.04], center=true);
        square([s*0.04, s*0.98], center=true);
        difference() { translate([-s*0.48, 0]) circle(r=s*0.34); translate([-s*0.48, 0]) circle(r=s*0.30); }
        difference() { translate([ s*0.48, 0]) circle(r=s*0.34); translate([ s*0.48, 0]) circle(r=s*0.30); }
    }
}

module shape_car_2d(s) {
    union() {
        offset(r = s*0.05) polygon([[-s*0.26, s*0.04], [-s*0.16, s*0.30], [s*0.16, s*0.30], [s*0.26, s*0.04]]);
        offset(r = s*0.05) square([s*0.86, s*0.24], center=true);
        translate([-s*0.26, -s*0.18]) circle(r=s*0.13);
        translate([ s*0.26, -s*0.18]) circle(r=s*0.13);
    }
}

module shape_ghost_2d(s) {
    union() {
        hull() { translate([0, s*0.14]) circle(r=s*0.34); translate([0, -s*0.22]) square([s*0.68, s*0.10], center=true); }
        translate([-s*0.22, -s*0.28]) circle(r=s*0.12);
        translate([ 0,      -s*0.28]) circle(r=s*0.12);
        translate([ s*0.22, -s*0.28]) circle(r=s*0.12);
        translate([-s*0.36, -s*0.02]) rotate(30)  scale([1.4, 0.7]) circle(r=s*0.10);
        translate([ s*0.36, -s*0.02]) rotate(-30) scale([1.4, 0.7]) circle(r=s*0.10);
    }
}

module shape_tree_2d(s) {
    union() {
        translate([0, -s*0.38]) square([s*0.18, s*0.22], center=true);
        offset(r = s*0.02) {
            polygon([[-s*0.44, -s*0.28], [s*0.44, -s*0.28], [0, s*0.04]]);
            polygon([[-s*0.36, -s*0.04], [s*0.36, -s*0.04], [0, s*0.26]]);
            polygon([[-s*0.26,  s*0.18], [s*0.26,  s*0.18], [0, s*0.48]]);
        }
    }
}

module shape_pikmin_2d(s) {
    union() {
        hull() { translate([0, s*0.02]) circle(r=s*0.20); translate([0, s*0.14]) circle(r=s*0.14); }
        hull() { translate([0, -s*0.12]) circle(r=s*0.13); translate([0, -s*0.28]) circle(r=s*0.15); }
        hull() { translate([-s*0.10, -s*0.12]) circle(r=s*0.045); translate([-s*0.26, -s*0.22]) circle(r=s*0.04); }
        hull() { translate([ s*0.10, -s*0.12]) circle(r=s*0.045); translate([ s*0.26, -s*0.22]) circle(r=s*0.04); }
        hull() { translate([-s*0.07, -s*0.30]) circle(r=s*0.045); translate([-s*0.10, -s*0.46]) circle(r=s*0.045); }
        hull() { translate([ s*0.07, -s*0.30]) circle(r=s*0.045); translate([ s*0.10, -s*0.46]) circle(r=s*0.045); }
        hull() { translate([0, s*0.24]) circle(r=s*0.04); translate([s*0.02, s*0.36]) circle(r=s*0.035); }
        hull() { translate([s*0.02, s*0.36]) circle(r=s*0.035); translate([s*0.12, s*0.44]) circle(r=s*0.03); }
        translate([s*0.24, s*0.41]) rotate(-22) scale([1.7, 0.85]) circle(r=s*0.085);
    }
}


/* -------------------------------------------------------- */
/* 10 款精確腳趾青蛙幾何模組（前腳 4 趾 ＋ 後腳 5 趾帶蹼）      */
/* -------------------------------------------------------- */

// 青蛙腳趾輔助模組（pos=腳踝位置, ang=朝向角度, sz=腳掌尺寸, count=趾數[前4/後5]）
module frog_toes(pos, ang, sz, count=5) {
    angles = (count == 4) ? [-33, -11, 11, 33] : [-44, -22, 0, 22, 44];
    toe_r  = (count == 4) ? sz * 0.17 : sz * 0.155;
    translate(pos)
        rotate(ang)
            union() {
                for (a = angles) {
                    rotate(a)
                        hull() {
                            circle(r = toe_r * 1.15);
                            translate([sz * 0.88, 0]) circle(r = toe_r);
                        }
                }
            }
}

// 1. 正面經典蹲坐青蛙 (Frog_Sit) - 前掌 4 趾 ＋ 後掌 5 趾
module shape_frog_sit_2d(s) {
    difference() {
        union() {
            translate([0, s*0.16]) scale([1.45, 0.85]) circle(r=s*0.22);
            translate([-s*0.20, s*0.34]) circle(r=s*0.11);
            translate([ s*0.20, s*0.34]) circle(r=s*0.11);
            translate([0, -s*0.14]) scale([1.15, 0.95]) circle(r=s*0.23);
            for (dir = [-1, 1]) {
                hull() { translate([dir*s*0.20, -s*0.16]) circle(r=s*0.08); translate([dir*s*0.40, -s*0.08]) circle(r=s*0.065); }
                hull() { translate([dir*s*0.40, -s*0.08]) circle(r=s*0.065); translate([dir*s*0.32, -s*0.36]) circle(r=s*0.055); }
                frog_toes([dir*s*0.32, -s*0.36], dir == 1 ? -15 : 195, s*0.15, 5);
                hull() { translate([dir*s*0.12, -s*0.14]) circle(r=s*0.048); translate([dir*s*0.14, -s*0.40]) circle(r=s*0.048); }
                frog_toes([dir*s*0.14, -s*0.40], dir == 1 ? -65 : 245, s*0.115, 4);
            }
        }
        translate([-s*0.20, s*0.34]) circle(r=s*0.045);
        translate([ s*0.20, s*0.34]) circle(r=s*0.045);
    }
}

// 2. Q版微笑大頭蛙 (Frog_Head)
module shape_frog_head_2d(s) {
    difference() {
        union() {
            translate([0, -s*0.06]) scale([1.35, 0.95]) circle(r=s*0.36);
            translate([-s*0.24, s*0.28]) circle(r=s*0.16);
            translate([ s*0.24, s*0.28]) circle(r=s*0.16);
        }
        translate([-s*0.24, s*0.28]) circle(r=s*0.065);
        translate([ s*0.24, s*0.28]) circle(r=s*0.065);
        translate([0, -s*0.06])
            difference() {
                circle(r=s*0.24);
                translate([0, s*0.05]) circle(r=s*0.24);
                translate([0, s*0.18]) square([s*0.60, s*0.30], center=true);
            }
    }
}

// 3. 側面蹲坐青蛙 (Frog_Side) - 前腳 4 趾 ＋ 後腳 5 趾
module shape_frog_side_2d(s) {
    difference() {
        union() {
            hull() {
                translate([ s*0.22,  s*0.12]) circle(r=s*0.16);
                translate([ 0,       s*0.16]) circle(r=s*0.20);
                translate([-s*0.24, -s*0.18]) circle(r=s*0.18);
                translate([ s*0.10, -s*0.18]) circle(r=s*0.14);
            }
            translate([s*0.14, s*0.30]) circle(r=s*0.10);
            hull() { translate([s*0.18, -s*0.10]) circle(r=s*0.055); translate([s*0.22, -s*0.40]) circle(r=s*0.048); }
            frog_toes([s*0.22, -s*0.40], 0, s*0.135, 4);
            hull() { translate([-s*0.22, -s*0.16]) circle(r=s*0.09); translate([-s*0.04, -s*0.26]) circle(r=s*0.07); }
            hull() { translate([-s*0.04, -s*0.26]) circle(r=s*0.065); translate([-s*0.32, -s*0.38]) circle(r=s*0.055); }
            frog_toes([-s*0.32, -s*0.38], 0, s*0.16, 5);
        }
        translate([s*0.14, s*0.30]) circle(r=s*0.04);
    }
}

// 4. 飛躍大張腿青蛙 (Frog_Jump) - 前掌 4 趾 ＋ 後蹼 5 趾
module shape_frog_jump_2d(s) {
    rotate(28)
        difference() {
            union() {
                hull() {
                    translate([ s*0.22, 0]) circle(r=s*0.16);
                    translate([-s*0.16, 0]) circle(r=s*0.14);
                }
                translate([s*0.26,  s*0.14]) circle(r=s*0.085);
                translate([s*0.26, -s*0.14]) circle(r=s*0.085);
                for (dir = [-1, 1]) {
                    hull() { translate([s*0.20, dir*s*0.10]) circle(r=s*0.045); translate([s*0.42, dir*s*0.14]) circle(r=s*0.042); }
                    frog_toes([s*0.42, dir*s*0.14], dir*12, s*0.115, 4);
                    hull() { translate([-s*0.16, dir*s*0.08]) circle(r=s*0.065); translate([-s*0.44, dir*s*0.26]) circle(r=s*0.052); }
                    frog_toes([-s*0.44, dir*s*0.26], 180 - dir*32, s*0.16, 5);
                }
            }
            translate([s*0.26,  s*0.14]) circle(r=s*0.035);
            translate([s*0.26, -s*0.14]) circle(r=s*0.035);
        }
}

// 5. 吐長舌捕蟲青蛙 (Frog_Tongue) - 前腳 4 趾 ＋ 後腳 5 趾
module shape_frog_tongue_2d(s) {
    union() {
        hull() {
            translate([-s*0.24,  s*0.08]) circle(r=s*0.16);
            translate([-s*0.32, -s*0.22]) circle(r=s*0.17);
            translate([-s*0.14, -s*0.22]) circle(r=s*0.13);
        }
        translate([-s*0.24, s*0.26]) circle(r=s*0.085);
        translate([-s*0.14, s*0.24]) circle(r=s*0.08);
        hull() { translate([-s*0.20, s*0.14]) circle(r=s*0.06); translate([-s*0.04, s*0.18]) circle(r=s*0.05); }
        hull() { translate([-s*0.16, -s*0.08]) circle(r=s*0.06); translate([-s*0.02, -s*0.12]) circle(r=s*0.05); }
        hull() { translate([-s*0.14, -s*0.22]) circle(r=s*0.05); translate([-s*0.08, -s*0.40]) circle(r=s*0.045); }
        frog_toes([-s*0.08, -s*0.40], 0, s*0.125, 4);
        hull() { translate([-s*0.32, -s*0.24]) circle(r=s*0.07); translate([-s*0.40, -s*0.40]) circle(r=s*0.052); }
        frog_toes([-s*0.40, -s*0.40], 0, s*0.15, 5);
        hull() {
            translate([-s*0.10, s*0.02]) circle(r=s*0.035);
            translate([ s*0.38, s*0.06]) circle(r=s*0.03);
        }
        translate([s*0.42, s*0.06]) circle(r=s*0.055);
        translate([s*0.40, s*0.14]) rotate(20) scale([0.6, 1.4]) circle(r=s*0.045);
    }
}

// 6. 俯視蛙式游泳青蛙 (Frog_Swim) - 划水前掌 4 趾 ＋ 蹬水後蹼 5 趾
module shape_frog_swim_2d(s) {
    difference() {
        union() {
            hull() {
                translate([0,  s*0.24]) circle(r=s*0.15);
                translate([0,  s*0.04]) circle(r=s*0.18);
                translate([0, -s*0.20]) circle(r=s*0.14);
            }
            translate([-s*0.14, s*0.22]) circle(r=s*0.075);
            translate([ s*0.14, s*0.22]) circle(r=s*0.075);
            for (dir = [-1, 1]) {
                hull() { translate([dir*s*0.14, s*0.12]) circle(r=s*0.05); translate([dir*s*0.38, s*0.18]) circle(r=s*0.045); }
                hull() { translate([dir*s*0.38, s*0.18]) circle(r=s*0.045); translate([dir*s*0.32, s*0.36]) circle(r=s*0.045); }
                frog_toes([dir*s*0.32, s*0.36], 90 - dir*15, s*0.125, 4);
                hull() { translate([dir*s*0.12, -s*0.18]) circle(r=s*0.065); translate([dir*s*0.38, -s*0.16]) circle(r=s*0.055); }
                hull() { translate([dir*s*0.38, -s*0.16]) circle(r=s*0.055); translate([dir*s*0.28, -s*0.38]) circle(r=s*0.048); }
                frog_toes([dir*s*0.28, -s*0.38], -90 + dir*25, s*0.16, 5);
            }
        }
        translate([-s*0.14, s*0.22]) circle(r=s*0.03);
        translate([ s*0.14, s*0.22]) circle(r=s*0.03);
    }
}

// 7. 撐荷葉傘站立青蛙 (Frog_Umbrella) - 雙前手 4 趾 ＋ 站立雙後腳 5 趾
module shape_frog_umbrella_2d(s) {
    union() {
        translate([s*0.04, s*0.28])
            scale([1.55, 0.55])
                difference() {
                    circle(r=s*0.30);
                    translate([0, -s*0.22]) square([s*0.70, s*0.35], center=true);
                }
        hull() {
            translate([s*0.16,  s*0.30]) circle(r=s*0.028);
            translate([s*0.16, -s*0.16]) circle(r=s*0.028);
        }
        translate([-s*0.10, -s*0.02]) scale([1.25, 0.85]) circle(r=s*0.15);
        translate([-s*0.20,  s*0.12]) circle(r=s*0.07);
        translate([ 0.00,    s*0.12]) circle(r=s*0.07);
        translate([-s*0.10, -s*0.22]) scale([0.95, 1.05]) circle(r=s*0.15);
        hull() { translate([0.00, -s*0.14]) circle(r=s*0.04); translate([s*0.16, -s*0.12]) circle(r=s*0.04); }
        frog_toes([s*0.16, -s*0.12], 15, s*0.085, 4);
        hull() { translate([-s*0.20, -s*0.14]) circle(r=s*0.04); translate([-s*0.30, -s*0.24]) circle(r=s*0.04); }
        frog_toes([-s*0.30, -s*0.24], 215, s*0.085, 4);
        hull() { translate([-s*0.16, -s*0.34]) circle(r=s*0.045); translate([-s*0.20, -s*0.44]) circle(r=s*0.045); }
        frog_toes([-s*0.20, -s*0.44], 210, s*0.12, 5);
        hull() { translate([-s*0.04, -s*0.34]) circle(r=s*0.045); translate([ 0.00,   -s*0.44]) circle(r=s*0.045); }
        frog_toes([ 0.00,   -s*0.44], -30, s*0.12, 5);
    }
}

// 8. 鼓腮大叫唱歌青蛙 (Frog_Sing) - 胸前小前腳 4 趾 ＋ 蹲坐後腳 5 趾
module shape_frog_sing_2d(s) {
    difference() {
        union() {
            translate([-s*0.06,  s*0.10]) circle(r=s*0.22);
            translate([ s*0.06, -s*0.06]) circle(r=s*0.22);
            translate([-s*0.14, -s*0.22]) circle(r=s*0.18);
            translate([-s*0.16, s*0.32]) circle(r=s*0.09);
            translate([-s*0.02, s*0.30]) circle(r=s*0.085);
            hull() { translate([-s*0.02, -s*0.18]) circle(r=s*0.04); translate([s*0.14, -s*0.24]) circle(r=s*0.038); }
            frog_toes([s*0.14, -s*0.24], -10, s*0.09, 4);
            hull() { translate([-s*0.14, -s*0.34]) circle(r=s*0.06); translate([s*0.06, -s*0.40]) circle(r=s*0.05); }
            frog_toes([s*0.06, -s*0.40], 0, s*0.15, 5);
            translate([s*0.34, s*0.22]) circle(r=s*0.055);
            translate([s*0.37, s*0.22]) square([s*0.035, s*0.22]);
            translate([s*0.37, s*0.38]) polygon([[0,0], [s*0.10, -s*0.04], [s*0.10, s*0.02], [0, s*0.06]]);
        }
        translate([s*0.06, s*0.14]) circle(r=s*0.09);
    }
}

// 9. 皇冠青蛙王子 (Frog_Crown)
module shape_frog_crown_2d(s) {
    difference() {
        union() {
            translate([0, -s*0.10]) scale([1.35, 0.90]) circle(r=s*0.30);
            translate([-s*0.22, s*0.16]) circle(r=s*0.12);
            translate([ s*0.22, s*0.16]) circle(r=s*0.12);
            polygon([
                [-s*0.18, s*0.22],
                [ s*0.18, s*0.22],
                [ s*0.22, s*0.42],
                [ s*0.09, s*0.31],
                [ 0,      s*0.46],
                [-s*0.09, s*0.31],
                [-s*0.22, s*0.42]
            ]);
            translate([-s*0.22, s*0.44]) circle(r=s*0.035);
            translate([ 0,      s*0.48]) circle(r=s*0.04);
            translate([ s*0.22, s*0.44]) circle(r=s*0.035);
        }
        translate([-s*0.22, s*0.16]) circle(r=s*0.045);
        translate([ s*0.22, s*0.16]) circle(r=s*0.045);
    }
}

// 10. 圓屁股背影青蛙 (Frog_Back) - 兩側蹲坐後腳蹼 5 趾
module shape_frog_back_2d(s) {
    union() {
        hull() {
            translate([0,  s*0.16]) scale([1.2, 0.85]) circle(r=s*0.19);
            translate([0, -s*0.14]) scale([1.25, 0.95]) circle(r=s*0.26);
        }
        translate([-s*0.16, s*0.32]) circle(r=s*0.095);
        translate([ s*0.16, s*0.32]) circle(r=s*0.095);
        for (dir = [-1, 1]) {
            hull() { translate([dir*s*0.22, -s*0.16]) circle(r=s*0.095); translate([dir*s*0.38, -s*0.24]) circle(r=s*0.08); }
            hull() { translate([dir*s*0.38, -s*0.24]) circle(r=s*0.075); translate([dir*s*0.28, -s*0.40]) circle(r=s*0.055); }
            frog_toes([dir*s*0.28, -s*0.40], dir == 1 ? -20 : 200, s*0.15, 5);
        }
    }
}

module render_selected_shape(type, s) {
    if (type == "Flower")                 shape_flower_2d(s);
    else if (type == "Shiba_Front")       shape_shiba_front_2d(s);
    else if (type == "Shiba_Back")        shape_shiba_back_2d(s);
    else if (type == "Shiba_Silhouette")  shape_shiba_silhouette_2d(s);
    else if (type == "Bullfrog_Front")    shape_bullfrog_front_2d(s);
    else if (type == "Bullfrog_Back")     shape_bullfrog_back_2d(s);
    else if (type == "Frog_Silhouette")   shape_frog_silhouette_2d(s);
    else if (type == "Star")              shape_star_2d(s);
    else if (type == "Heart")             shape_heart_2d(s);
    else if (type == "Crown")             shape_crown_2d(s);
    else if (type == "Paw")               shape_paw_2d(s);
    else if (type == "Bow")               shape_bow_2d(s);
    else if (type == "Lightning")         shape_lightning_2d(s);
    else if (type == "Moon")              shape_moon_2d(s);
    else if (type == "Clover")            shape_clover_2d(s);
    else if (type == "Diamond")           shape_diamond_2d(s);
    else if (type == "Music")             shape_music_2d(s);
    else if (type == "Cloud")             shape_cloud_2d(s);
    else if (type == "Bear")              shape_bear_2d(s);
    else if (type == "Butterfly")         shape_butterfly_2d(s);
    else if (type == "Apple")             shape_apple_2d(s);
    else if (type == "Cat")               shape_cat_2d(s);
    else if (type == "Rabbit")            shape_rabbit_2d(s);
    else if (type == "Dino")              shape_dino_2d(s);
    else if (type == "Rocket")            shape_rocket_2d(s);
    else if (type == "Shield")            shape_shield_2d(s);
    else if (type == "IceCream")          shape_icecream_2d(s);
    else if (type == "Strawberry")        shape_strawberry_2d(s);
    else if (type == "Cherry")            shape_cherry_2d(s);
    else if (type == "Sun")               shape_sun_2d(s);
    else if (type == "Snowflake")         shape_snowflake_2d(s);
    else if (type == "Unicorn")           shape_unicorn_2d(s);
    else if (type == "Penguin")           shape_penguin_2d(s);
    else if (type == "Dog")               shape_dog_2d(s);
    else if (type == "Donut")             shape_donut_2d(s);
    else if (type == "Cupcake")           shape_cupcake_2d(s);
    else if (type == "Coffee")            shape_coffee_2d(s);
    else if (type == "Basketball")        shape_basketball_2d(s);
    else if (type == "Car")               shape_car_2d(s);
    else if (type == "Ghost")             shape_ghost_2d(s);
    else if (type == "Tree")              shape_tree_2d(s);
    else if (type == "Pikmin")            shape_pikmin_2d(s);
    else if (type == "Frog_Sit")          shape_frog_sit_2d(s);
    else if (type == "Frog_Head")         shape_frog_head_2d(s);
    else if (type == "Frog_Side")         shape_frog_side_2d(s);
    else if (type == "Frog_Jump")         shape_frog_jump_2d(s);
    else if (type == "Frog_Tongue")       shape_frog_tongue_2d(s);
    else if (type == "Frog_Swim")         shape_frog_swim_2d(s);
    else if (type == "Frog_Umbrella")     shape_frog_umbrella_2d(s);
    else if (type == "Frog_Sing")         shape_frog_sing_2d(s);
    else if (type == "Frog_Crown")        shape_frog_crown_2d(s);
    else if (type == "Frog_Back")         shape_frog_back_2d(s);
}

// 取得圖案外擴輪廓（含剪影外框寬度，供底板自動包覆）
module render_shape_outer_bounds(type, s) {
    if (type == "Shiba_Silhouette")
        offset(r = shiba_sil_outline_width) shape_shiba_silhouette_2d(s);
    else if (type == "Frog_Silhouette")
        offset(r = frog_sil_outline_width) shape_frog_silhouette_2d(s);
    else
        render_selected_shape(type, s);
}

// 支援左右相反與上下顛倒鏡像轉換的圖案渲染模組
module render_transformed_shape(type, s, flip_x, flip_y) {
    scale([flip_x ? -1 : 1, flip_y ? -1 : 1])
        render_selected_shape(type, s);
}

module render_transformed_outer_bounds(type, s, flip_x, flip_y) {
    scale([flip_x ? -1 : 1, flip_y ? -1 : 1])
        render_shape_outer_bounds(type, s);
}

// 支援鏡像轉換的柴犬正面腹部與眼珠渲染模組
module render_transformed_shiba_front_belly(s, flip_x, flip_y) {
    scale([flip_x ? -1 : 1, flip_y ? -1 : 1])
        shape_shiba_front_belly_2d(s);
}

module render_transformed_shiba_front_eyes(s, flip_x, flip_y) {
    scale([flip_x ? -1 : 1, flip_y ? -1 : 1])
        shape_shiba_front_eyes_2d(s);
}

// 支援鏡像轉換的柴犬背面腹部渲染模組
module render_transformed_shiba_back_belly(s, flip_x, flip_y) {
    scale([flip_x ? -1 : 1, flip_y ? -1 : 1])
        shape_shiba_back_belly_2d(s);
}

// 支援鏡像轉換的青蛙正面斑紋與青蛙背面斑紋渲染模組
module render_transformed_bullfrog_front_spots(s, flip_x, flip_y) {
    scale([flip_x ? -1 : 1, flip_y ? -1 : 1])
        shape_bullfrog_front_spots_2d(s);
}

module render_transformed_bullfrog_back_spots(s, flip_x, flip_y) {
    scale([flip_x ? -1 : 1, flip_y ? -1 : 1])
        shape_bullfrog_back_spots_2d(s);
}

// 支援鏡像轉換的剪影外框環形模組（無重疊嵌合）
module render_transformed_silhouette_outline(type, s, w, flip_x, flip_y) {
    scale([flip_x ? -1 : 1, flip_y ? -1 : 1])
        difference() {
            offset(r = w) render_selected_shape(type, s);
            render_selected_shape(type, s);
        }
}


/* -------------------------------------------------------- */
/* 文字與掛孔座標計算                                        */
/* -------------------------------------------------------- */

module text2d() {
    offset(r=text_bold_offset)
        if (line1_engine == "Builtin_TC")
            render_builtin_tc_string(name_text, font_size);
        else
            text(name_text, size=font_size, font=font_choice, halign="left", valign="center");
}

module text2d_line2() {
    offset(r=line2_text_bold_offset)
        if (line2_engine == "Builtin_TC")
            render_builtin_tc_string(line2_text, line2_font_size);
        else
            text(line2_text, size=line2_font_size, font=line2_font_choice, halign="left", valign="center");
}

module base_shape_one() {
    offset(r = base_offset) text2d();
}

module base_shape_two() {
    offset(r = base_offset)
        union() {
            text2d();
            translate([line2_offset_x, line2_offset_y]) text2d_line2();
        }
}

holeA_local = [
    holeA_dist * cos(holeA_angle) + holeA_offset_x,
    holeA_dist * sin(holeA_angle) + holeA_offset_y
];
holeA_world = [
    shapeA_offset_x + holeA_local[0]*cos(shapeA_rotation) - holeA_local[1]*sin(shapeA_rotation),
    shapeA_offset_y + holeA_local[0]*sin(shapeA_rotation) + holeA_local[1]*cos(shapeA_rotation)
];

holeB_local = [
    holeB_dist * cos(holeB_angle) + holeB_offset_x,
    holeB_dist * sin(holeB_angle) + holeB_offset_y
];
holeB_world = [
    shapeB_offset_x + holeB_local[0]*cos(shapeB_rotation) - holeB_local[1]*sin(shapeB_rotation),
    shapeB_offset_y + holeB_local[0]*sin(shapeB_rotation) + holeB_local[1]*cos(shapeB_rotation)
];


/* -------------------------------------------------------- */
/* 最終 3D 模型生成                                          */
/* -------------------------------------------------------- */

module keychain() {

    /* 1. 文字底板層（含掛孔 A 外擴吊環底板） */
    color(base_color)
        linear_extrude(height=base_height)
            difference() {
                union() {
                    if (mode == "One Line") base_shape_one();
                    else                    base_shape_two();

                    if (shapeA_type != "None" && holeA_diameter > 0 && holeA_base_offset > 0)
                        translate(holeA_world) circle(d = holeA_diameter + holeA_base_offset * 2);
                }

                if (shapeA_type != "None" && holeA_diameter > 0)
                    translate(holeA_world) circle(d=holeA_diameter);

                if (shapeB_type != "None" && holeB_diameter > 0)
                    translate(holeB_world) circle(d=holeB_diameter);
            }

    /* 2. 第一行立體文字 */
    color(line1_color)
        translate([0, 0, base_height])
            linear_extrude(height=text_height)
                text2d();

    /* 3. 第二行立體文字 */
    if (mode == "Two Lines")
        color(line2_color)
            translate([line2_offset_x, line2_offset_y, base_height])
                linear_extrude(height=line2_text_height)
                    text2d_line2();

    /* 4. 裝飾圖案 A */
    if (shapeA_type != "None") {
        if (shapeA_base_enable)
            color(base_color)
                translate([shapeA_offset_x, shapeA_offset_y, 0])
                    rotate(shapeA_rotation)
                        linear_extrude(height=base_height)
                            difference() {
                                union() {
                                    offset(r=shapeA_base_offset)
                                        render_transformed_outer_bounds(shapeA_type, shapeA_size, shapeA_flip_x, shapeA_flip_y);
                                    if (holeA_diameter > 0 && holeA_base_offset > 0)
                                        translate(holeA_local) circle(d = holeA_diameter + holeA_base_offset * 2);
                                }
                                if (holeA_diameter > 0) translate(holeA_local) circle(d=holeA_diameter);
                            }

        color(shapeA_color)
            translate([shapeA_offset_x, shapeA_offset_y, base_height])
                rotate(shapeA_rotation)
                    linear_extrude(height=shapeA_height)
                        difference() {
                            render_transformed_shape(shapeA_type, shapeA_size, shapeA_flip_x, shapeA_flip_y);
                            if (shapeA_type == "Shiba_Front") {
                                render_transformed_shiba_front_belly(shapeA_size, shapeA_flip_x, shapeA_flip_y);
                                render_transformed_shiba_front_eyes(shapeA_size, shapeA_flip_x, shapeA_flip_y);
                            }
                            if (shapeA_type == "Shiba_Back")
                                render_transformed_shiba_back_belly(shapeA_size, shapeA_flip_x, shapeA_flip_y);
                            if (shapeA_type == "Bullfrog_Front")
                                render_transformed_bullfrog_front_spots(shapeA_size, shapeA_flip_x, shapeA_flip_y);
                            if (shapeA_type == "Bullfrog_Back")
                                render_transformed_bullfrog_back_spots(shapeA_size, shapeA_flip_x, shapeA_flip_y);
                            if (holeA_diameter > 0) translate(holeA_local) circle(d=holeA_diameter);
                        }

        if (shapeA_type == "Flower")
            color(flower_center_color)
                translate([shapeA_offset_x, shapeA_offset_y, base_height + 0.01])
                    rotate(shapeA_rotation)
                        linear_extrude(height=flower_center_height)
                            circle(r=shapeA_size*0.14);

        if (shapeA_type == "Shiba_Front") {
            color(shiba_front_belly_color)
                translate([shapeA_offset_x, shapeA_offset_y, base_height])
                    rotate(shapeA_rotation)
                        linear_extrude(height=shiba_front_belly_height)
                            difference() {
                                render_transformed_shiba_front_belly(shapeA_size, shapeA_flip_x, shapeA_flip_y);
                                if (holeA_diameter > 0) translate(holeA_local) circle(d=holeA_diameter);
                            }

            color(shiba_front_eye_color)
                translate([shapeA_offset_x, shapeA_offset_y, base_height])
                    rotate(shapeA_rotation)
                        linear_extrude(height=shiba_front_eye_height)
                            difference() {
                                render_transformed_shiba_front_eyes(shapeA_size, shapeA_flip_x, shapeA_flip_y);
                                if (holeA_diameter > 0) translate(holeA_local) circle(d=holeA_diameter);
                            }
        }

        if (shapeA_type == "Shiba_Back")
            color(shiba_back_belly_color)
                translate([shapeA_offset_x, shapeA_offset_y, base_height])
                    rotate(shapeA_rotation)
                        linear_extrude(height=shiba_back_belly_height)
                            difference() {
                                render_transformed_shiba_back_belly(shapeA_size, shapeA_flip_x, shapeA_flip_y);
                                if (holeA_diameter > 0) translate(holeA_local) circle(d=holeA_diameter);
                            }

        if (shapeA_type == "Bullfrog_Front")
            color(frog_front_spot_color)
                translate([shapeA_offset_x, shapeA_offset_y, base_height])
                    rotate(shapeA_rotation)
                        linear_extrude(height=frog_front_spot_height)
                            difference() {
                                render_transformed_bullfrog_front_spots(shapeA_size, shapeA_flip_x, shapeA_flip_y);
                                if (holeA_diameter > 0) translate(holeA_local) circle(d=holeA_diameter);
                            }

        if (shapeA_type == "Bullfrog_Back")
            color(frog_back_spot_color)
                translate([shapeA_offset_x, shapeA_offset_y, base_height])
                    rotate(shapeA_rotation)
                        linear_extrude(height=frog_back_spot_height)
                            difference() {
                                render_transformed_bullfrog_back_spots(shapeA_size, shapeA_flip_x, shapeA_flip_y);
                                if (holeA_diameter > 0) translate(holeA_local) circle(d=holeA_diameter);
                            }

        if (shapeA_type == "Shiba_Silhouette")
            color(shiba_sil_outline_color)
                translate([shapeA_offset_x, shapeA_offset_y, base_height])
                    rotate(shapeA_rotation)
                        linear_extrude(height=shiba_sil_outline_height)
                            difference() {
                                render_transformed_silhouette_outline("Shiba_Silhouette", shapeA_size, shiba_sil_outline_width, shapeA_flip_x, shapeA_flip_y);
                                if (holeA_diameter > 0) translate(holeA_local) circle(d=holeA_diameter);
                            }

        if (shapeA_type == "Frog_Silhouette")
            color(frog_sil_outline_color)
                translate([shapeA_offset_x, shapeA_offset_y, base_height])
                    rotate(shapeA_rotation)
                        linear_extrude(height=frog_sil_outline_height)
                            difference() {
                                render_transformed_silhouette_outline("Frog_Silhouette", shapeA_size, frog_sil_outline_width, shapeA_flip_x, shapeA_flip_y);
                                if (holeA_diameter > 0) translate(holeA_local) circle(d=holeA_diameter);
                            }
    }

    /* 5. 裝飾圖案 B */
    if (shapeB_type != "None") {
        if (shapeB_base_enable)
            color(base_color)
                translate([shapeB_offset_x, shapeB_offset_y, 0])
                    rotate(shapeB_rotation)
                        linear_extrude(height=base_height)
                            difference() {
                                offset(r=shapeB_base_offset)
                                    render_transformed_outer_bounds(shapeB_type, shapeB_size, shapeB_flip_x, shapeB_flip_y);
                                if (holeB_diameter > 0) translate(holeB_local) circle(d=holeB_diameter);
                            }

        color(shapeB_color)
            translate([shapeB_offset_x, shapeB_offset_y, base_height])
                rotate(shapeB_rotation)
                    linear_extrude(height=shapeB_height)
                        difference() {
                            render_transformed_shape(shapeB_type, shapeB_size, shapeB_flip_x, shapeB_flip_y);
                            if (shapeB_type == "Shiba_Front") {
                                render_transformed_shiba_front_belly(shapeB_size, shapeB_flip_x, shapeB_flip_y);
                                render_transformed_shiba_front_eyes(shapeB_size, shapeB_flip_x, shapeB_flip_y);
                            }
                            if (shapeB_type == "Shiba_Back")
                                render_transformed_shiba_back_belly(shapeB_size, shapeB_flip_x, shapeB_flip_y);
                            if (shapeB_type == "Bullfrog_Front")
                                render_transformed_bullfrog_front_spots(shapeB_size, shapeB_flip_x, shapeB_flip_y);
                            if (shapeB_type == "Bullfrog_Back")
                                render_transformed_bullfrog_back_spots(shapeB_size, shapeB_flip_x, shapeB_flip_y);
                            if (holeB_diameter > 0) translate(holeB_local) circle(d=holeB_diameter);
                        }

        if (shapeB_type == "Flower")
            color(flower_center_color)
                translate([shapeB_offset_x, shapeB_offset_y, base_height + 0.01])
                    rotate(shapeB_rotation)
                        linear_extrude(height=flower_center_height)
                            circle(r=shapeB_size*0.14);

        if (shapeB_type == "Shiba_Front") {
            color(shiba_front_belly_color)
                translate([shapeB_offset_x, shapeB_offset_y, base_height])
                    rotate(shapeB_rotation)
                        linear_extrude(height=shiba_front_belly_height)
                            difference() {
                                render_transformed_shiba_front_belly(shapeB_size, shapeB_flip_x, shapeB_flip_y);
                                if (holeB_diameter > 0) translate(holeB_local) circle(d=holeB_diameter);
                            }

            color(shiba_front_eye_color)
                translate([shapeB_offset_x, shapeB_offset_y, base_height])
                    rotate(shapeB_rotation)
                        linear_extrude(height=shiba_front_eye_height)
                            difference() {
                                render_transformed_shiba_front_eyes(shapeB_size, shapeB_flip_x, shapeB_flip_y);
                                if (holeB_diameter > 0) translate(holeB_local) circle(d=holeB_diameter);
                            }
        }

        if (shapeB_type == "Shiba_Back")
            color(shiba_back_belly_color)
                translate([shapeB_offset_x, shapeB_offset_y, base_height])
                    rotate(shapeB_rotation)
                        linear_extrude(height=shiba_back_belly_height)
                            difference() {
                                render_transformed_shiba_back_belly(shapeB_size, shapeB_flip_x, shapeB_flip_y);
                                if (holeB_diameter > 0) translate(holeB_local) circle(d=holeB_diameter);
                            }

        if (shapeB_type == "Bullfrog_Front")
            color(frog_front_spot_color)
                translate([shapeB_offset_x, shapeB_offset_y, base_height])
                    rotate(shapeB_rotation)
                        linear_extrude(height=frog_front_spot_height)
                            difference() {
                                render_transformed_bullfrog_front_spots(shapeB_size, shapeB_flip_x, shapeB_flip_y);
                                if (holeB_diameter > 0) translate(holeB_local) circle(d=holeB_diameter);
                            }

        if (shapeB_type == "Bullfrog_Back")
            color(frog_back_spot_color)
                translate([shapeB_offset_x, shapeB_offset_y, base_height])
                    rotate(shapeB_rotation)
                        linear_extrude(height=frog_back_spot_height)
                            difference() {
                                render_transformed_bullfrog_back_spots(shapeB_size, shapeB_flip_x, shapeB_flip_y);
                                if (holeB_diameter > 0) translate(holeB_local) circle(d=holeB_diameter);
                            }

        if (shapeB_type == "Shiba_Silhouette")
            color(shiba_sil_outline_color)
                translate([shapeB_offset_x, shapeB_offset_y, base_height])
                    rotate(shapeB_rotation)
                        linear_extrude(height=shiba_sil_outline_height)
                            difference() {
                                render_transformed_silhouette_outline("Shiba_Silhouette", shapeB_size, shiba_sil_outline_width, shapeB_flip_x, shapeB_flip_y);
                                if (holeB_diameter > 0) translate(holeB_local) circle(d=holeB_diameter);
                            }

        if (shapeB_type == "Frog_Silhouette")
            color(frog_sil_outline_color)
                translate([shapeB_offset_x, shapeB_offset_y, base_height])
                    rotate(shapeB_rotation)
                        linear_extrude(height=frog_sil_outline_height)
                            difference() {
                                render_transformed_silhouette_outline("Frog_Silhouette", shapeB_size, frog_sil_outline_width, shapeB_flip_x, shapeB_flip_y);
                                if (holeB_diameter > 0) translate(holeB_local) circle(d=holeB_diameter);
                            }
    }
}

keychain();
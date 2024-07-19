class TextDisplay {
  void drawPartText(int count2) {
    fill(0);
    textSize(40);
    switch (count2) {
      case 1:
        text("人工的な", 125, 395);
        text("自然な", 1020, 395);
        break;
      case 2:
        text("疲れやすい", 125, 395);
        text("疲れにくい", 1020, 395);
        break;
      case 3:
        text("刺激的", 125, 395);
        text("控えめ", 1020, 395);
        break;
      case 4:
        text("心地よくない", 125, 395);
        text("心地よい", 1020, 395);
        break;
      case 5:
        text("活気のない", 125, 395);
        text("活気のある", 1020, 395);
        break;
      case 6:
        text("魅力的でない", 125, 395);
        text("魅力的である", 1020, 395);
        break;
      case 7:
        text("まぶしい", 125, 395);
        text("まぶしくない", 1020, 395);
        break;
      case 8:
        text("緊張", 125, 395);
        text("リラックス", 1020, 395);
        break;
      case 9:
        text("醜い", 125, 395);
        text("美しい", 1020, 395);
        break;
      case 10:
        text("不快", 125, 395);
        text("快適", 1020, 395);
        break;
      case 11:
        textSize(30);
        text("気分転換できない", 125, 395);
        text("気分転換できる", 1020, 395);
        break;
      case 12:
        text("暗い", 125, 395);
        text("明るい", 1020, 395);
        break;
      case 13:
        text("不安がある", 125, 395);
        text("安心できる", 1020, 395);
        break;
    }
  }

  void drawTermsAndFactorCount(int[] rand, int terms_count, int count1, int count2) {
    if (terms_count < 16) {
      textSize(80);
      text("木漏れ日条件" + rand[terms_count], 300, 70);
      textSize(60);
      text(count1 + "/16", 1200, 70);
    }
    textSize(50);
    text("因子" + count2, width / 2 - 80, 280);
  }
}

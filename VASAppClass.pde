class VASApp {
  float verticalLinePosition;
  float horizontalLineWidth = 50;
  float lineWidth = 5;
  int count1 = 1;
  int count2 = 1;
  int[] rand = new int[16];
  int terms_count = 0;
  String[][] data = new String[100][100];
  String[][] csvData;
  
  void setup() {
    verticalLinePosition = width / 2;
    int testnum = 22;
    csvData = csvHandler.loadCSV();
    csvHandler.loadRowData(testnum - 1, rand);
    
    for (int s = 1; s < 14; s++) {
      data[s][0] = "factor" + str(s);
    }
    
    for (int t = 1; t < 17; t++) {
      data[0][t] = "terms" + str(rand[t - 1]);
    }
  }

  void draw() {
    drawHorizontalLine();
    scrollbar.draw();
    if (count2 == 14) {
      count1++;
      count2 = 1;
      terms_count++;
    }
    textDisplay.drawPartText(count2);
    nextButton.draw(mouseX, mouseY);
    exportButton.draw(mouseX, mouseY);
    textDisplay.drawTermsAndFactorCount(rand, terms_count, count1, count2);
  }

  void drawHorizontalLine() {
    stroke(90, 90, 200);
    line(250, height / 2, 250 + 620, height / 2);
    line(250, height / 2 - 20, 250, height / 2 + 20);
    line(250 + 620, height / 2 - 20, 250 + 620, height / 2 + 20);
    strokeWeight(lineWidth);
  }

  boolean canProceed() {
    return count1 < 17;
  }

  void proceed(float position) {
    data[count2][count1] = str(int((position - 250) / 6.2));
    count2++;
  }

  String[][] getData() {
    return data;
  }
}

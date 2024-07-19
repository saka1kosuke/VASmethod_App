VASApp vasApp;
Scrollbar scrollbar;
Button nextButton;
Button exportButton;
CSVHandler csvHandler;
TextDisplay textDisplay;

void setup() {
  size(1300, 800);
  vasApp = new VASApp();
  scrollbar = new Scrollbar(250, height / 2, 620);
  nextButton = new Button(20, 600, 200, 60, "次へ");
  exportButton = new Button(920, 600, 200, 60, "保存&書き出し");
  csvHandler = new CSVHandler("komorebi.csv", "input.csv");
  textDisplay = new TextDisplay();

  PFont font = createFont("Meiryo", 50);
  textFont(font);

  vasApp.setup();
}

void draw() {
  background(255);
  vasApp.draw();
}

void mouseDragged() {
  scrollbar.mouseDragged(mouseX, mouseY);
}

void mousePressed() {
  if (nextButton.isHovered(mouseX, mouseY) && vasApp.canProceed()) {
    vasApp.proceed(scrollbar.getPosition());
    scrollbar.reset();
  }
  
  if (exportButton.isHovered(mouseX, mouseY)) {
    csvHandler.exportData(vasApp.getData());
  }
}

class CSVHandler {
  String csvFileName;
  String inputCsvFileName;

  CSVHandler(String csvFileName, String inputCsvFileName) {
    this.csvFileName = csvFileName;
    this.inputCsvFileName = inputCsvFileName;
  }

  String[][] loadCSV() {
    String[] rows = loadStrings(inputCsvFileName);
    String[][] result = new String[rows.length][];
    for (int i = 0; i < rows.length; i++) {
      result[i] = split(rows[i], ',');
    }
    return result;
  }

  void loadRowData(int rowIndex, int[] rand) {
    String[][] csvData = loadCSV();
    if (rowIndex < csvData.length) {
      for (int i = 0; i < 16; i++) {
        rand[i] = int(csvData[rowIndex][i]);
      }
    }
  }

  void exportData(String[][] data) {
    PrintWriter file = createWriter(csvFileName);
    for (int i = 0; i < 17; i++) {
      for (int j = 0; j < 14; j++) {
        file.print(data[j][i] + ",");
      }
      file.println();
    }
    file.flush();
    file.close();
    println("CSVにデータを書き込みました。");
  }
}

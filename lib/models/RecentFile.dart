class RecentFile {
  final String icon;
  final String title;
  final String date;
  final String size;

  RecentFile({
    required this.icon,
    required this.title,
    required this.date,
    required this.size,
  });
}

List demoRecentFiles = [
  RecentFile(
    icon: "assets/icons/xd_file.svg",
    title: "XD File",
    date: "01-03-2021",
    size: "3.5MB",
  ),
  RecentFile(
    icon: "assets/icons/Figma_file.svg",
    title: "Figma Files",
    date: "27-02-2021",
    size: "19.0MB",
  ),
  RecentFile(
    icon: "assets/icons/doc_file.svg",
    title: "Documents",
    date: "23-02-2021",
    size: "32.5MB",
  ),
  RecentFile(
    icon: "assets/icons/sound_file.svg",
    title: "Sound Files",
    date: "21-02-2021",
    size: "3.5MB",
  ),
  RecentFile(
    icon: "assets/icons/media_file.svg",
    title: "Media Files",
    date: "23-02-2021",
    size: "2.5GB",
  ),
  RecentFile(
    icon: "assets/icons/pdf_file.svg",
    title: "PDF Files",
    date: "25-02-2021",
    size: "3.5MB",
  ),
  RecentFile(
    icon: "assets/icons/excle_file.svg",
    title: "Excel Files",
    date: "25-02-2021",
    size: "34.5MB",
  ),
];
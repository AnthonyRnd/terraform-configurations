data "local_file" "texte" {
  filename = "${path.module}/texte-de-bienvenue.txt "
}

resource "local_file" "card" {
  filename = "${path.module}/card.txt"
  content = "${var.user[0]} ${data.local_file.texte.content} "
}

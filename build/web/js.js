/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function HtmlToPdf(){
var doc = new jsPDF();
var HTMLelement=$(".html_to_pdf").html();
//doc.text("Hello world!", 10, 10);
doc.fromHTML(html_to_pdf);
doc.save("html_to_pdf.pdf");
}
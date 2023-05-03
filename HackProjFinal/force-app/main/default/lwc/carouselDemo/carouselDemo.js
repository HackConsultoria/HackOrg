import { LightningElement } from 'lwc'; 
import carouselStyles from './carouselDemo.css'; // Importa o estilo CSS para o componente

export default class CarouselDemo extends LightningElement { 
// Declara a classe CarouselDemo como uma extensão de LightningElement

    carousel = [ 
    // Declaração de uma variável chamada "carousel" que contém um array de objetos
        {
            id: "1",
            header: "Oportunidade Única",
            src: "https://img.freepik.com/vetores-gratis/ilustracao-de-design-plano-b2b_23-2149337639.jpg?size=626&ext=jpg&uid=R93830986&ga=GA1.2.460056409.1681601205&semt=robertav1_2_sidr",
            href: "https://www.google.com.br/",
            description: "Não deixe de contatar o Lead"
        },
        {
            id: "2",
            header: "Como atrair clientes",
            src: "https://img.freepik.com/vetores-gratis/conceito-abstrato-de-marketing-de-engajamento_335657-3096.jpg?size=626&ext=jpg&uid=R93830986&ga=GA1.1.460056409.1681601205&semt=robertav1_2_sidr",
            href: "https://www.google.com.br/",
            description: "Leia nosso novo artigo no Blog"
        },
        {
            id: "3",
            header: "Saiba mais sobre funil de vendas",
            src: "https://img.freepik.com/vetores-gratis/funil-de-vendas-geracao-de-leads-gestao-de-clientes-estrategia-de-marketing-elemento-de-design-plano-de-conversao-de-comercio-plano-de-venda-ilustracao-do-conceito-de-filtro-de-clientes_335657-2009.jpg?size=626&ext=jpg&uid=R93",
            href: "https://www.google.com.br/",
            description: "Leia nosso novo artigo no Blog"
        }
    ]
}
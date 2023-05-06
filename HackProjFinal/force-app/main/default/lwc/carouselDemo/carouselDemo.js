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
    ];
    handleImageClick(event) { 
    //Declaração de uma função chamada handleImageClick que recebe o evento click como argumento.
    //Essa função handleImageClick é acionada quando uma imagem no carrossel é clicada. Ela extrai o URL associado à imagem e abre esse URL em uma nova guia do navegador.
        const link = event.currentTarget.dataset.href;
        //Extrai o valor do atributo data-href do elemento clicado e o armazena na variável link. O atributo data-href é definido no componente lightning-carousel-image como data-href={photo.href}.
        window.open(link, '_blank');
        //Abre uma nova janela ou guia do navegador, usando o valor armazenado em link como o URL de destino. O segundo argumento '_blank' indica que a nova janela deve ser aberta em uma nova guia.
    }
}
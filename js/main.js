import { fetchData } from "./modules/DataMiner.js";

(() => {
    console.log('loaded');


    function popErrorBox(message) {
        alert(message);
    }
    

    function handleDataSet(data) {
        
        let lightbox = document.querySelector(".lightbox");
        let closeButton = lightbox.querySelector(".close-button");

        lightbox.classList.add("show-lightbox");

        const p = document.createElement('p');
        p.textContent = data[0].Description;
        lightbox.appendChild(p);

        function hidelightbox() {
            lightbox.classList.remove("show-lightbox");
            lightbox.removeChild(p);
            closeButton.removeEventListener("click", hidelightbox);
        }

        closeButton.addEventListener("click",hidelightbox);
    }

    function retrieveInfo(event) {
        // test for an ID
        // check of an id, and if there isn't one, then don't try the fetch call
        // becuase it'll break (the PHP will choke)
     
        if(!event.target.id) {return};

        fetchData(`./includes/index.php?id=${event.target.id}`).then(data => handleDataSet(data)).catch(err => console.log(err));
    }

    function favoriteThings(thumbs) {
        let columnSection = document.querySelector('.column-section'),
            columnTemplate = document.querySelector('#column-template').content;

        for (let column in thumbs) {
            let currentColumn = columnTemplate.cloneNode(true),
                currentColumnText = currentColumn.querySelector('.column').children;

            currentColumnText[1].textContent = thumbs[column].Title;
            currentColumnText[2].src = `images/${thumbs[column].Img}`;
            currentColumnText[2].id = thumbs[column].ID;
           
            columnSection.appendChild(currentColumn);
        }
        columnSection.addEventListener("click", retrieveInfo);
        // columnSection.forEach(button => button.addEventListener("click", handleDataSet));
    }

    

    fetchData("./includes/index.php").then(data => favoriteThings(data)).catch((err) => {console.log(err)
        const columnSection = document.querySelector('.column-section');

        const message = "Something has gone horribly, horribly wrong";
        columnSection.textContent = message;
        popErrorBox(message);
    });
    

})();
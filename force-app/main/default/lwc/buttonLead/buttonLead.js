import { LightningElement } from 'lwc';

export default class ButtonBasic extends LightningElement {
    handleClickLeadForm(){
        let event = new CustomEvent("click");
        this.dispatchEvent(event);
    }
}
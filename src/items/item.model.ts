import { ItemStatus } from './item-status.enum';

export interface Item {
  id: string;
  name: string;
  description: string;
  price: number;
  status: ItemStatus;
}

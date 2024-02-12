import { Type } from 'class-transformer';
import { IsInt, IsNotEmpty, IsString, MaxLength, Min } from 'class-validator';

export class CreateItemDto {
  @IsString()
  @IsNotEmpty()
  @MaxLength(32)
  name: string;
  @IsString()
  @IsNotEmpty()
  @MaxLength(128)
  description: string;
  @IsInt()
  @Min(1)
  @Type(() => Number)
  price: number;
}

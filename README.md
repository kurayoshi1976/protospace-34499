＃　テーブル設計

## usersテーブル

| Colum      | Type     | Options          | 
| ---------- | -------- | ---------------- |
| email      | string   | NOT NULL         |
| password   | string   | NOT NULL         |
| name       | string   | NOT NULL         |
| profile    | text     | NOT NULL         |
| occupation | text     | NOT NULL         |
| position   | text     | NOT NULL         |

### Association

- has_many :prototype
- has_many :comments

## prototypesテーブル

| colum      | Type       | options          |
| ---------- | ---------- | ---------------- |
| title      | string     | NOT NULL         |
| catch_copy | text       | NOT NULL         |
| concept    | text       | NOT NULL         |
| user       | references |                  |

### Association

- belongs_to :user
- has_many :comments

## commentsテーブル

| colum      | Type       | Options          |
| text       | text       | NOT NULL         |
| user       | references |                  |
| prototype  | references |                  | 

### Association

- belongs_to :user
- belongs_to :prototype



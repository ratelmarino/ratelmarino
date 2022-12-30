(require 2htdp/image)
(require 2htdp/universe)

; Constantes
(define IMAGEM (circle 8 "solid" "dark green"))
(define LARGURA 600)
(define ALTURA 250)
(define TAMANHO-METADE-IMAGEM (/ (image-width IMAGEM) 2))
(define FIM-DE-CURSO (- LARGURA TAMANHO-METADE-IMAGEM))
(define VELOCIDADE 4)

; funções

(define (distancia tempo)
  (* tempo VELOCIDADE))

(define (desenha-bolinha tempo)
  (cond [(< (distancia tempo) FIM-DE-CURSO)
         (place-image IMAGEM (distancia tempo) (/ ALTURA 2)
                      (empty-scene LARGURA ALTURA))]
        [(>= (distancia tempo) FIM-DE-CURSO) 
         (place-image IMAGEM (- (* FIM-DE-CURSO 2) (distancia tempo)) (/ ALTURA 2)
                      (empty-scene LARGURA ALTURA))]))

(animate desenha-bolinha)


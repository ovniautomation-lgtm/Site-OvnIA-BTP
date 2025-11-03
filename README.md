# OvnIA - Assistant Vocal IA

Assistant vocal IA pour automatiser le service client dans différents secteurs (Restaurant, Salon, Garage).

## 🚀 Technologies

- **React** + **TypeScript**
- **Vite** (Build tool)
- **Tailwind CSS** (Styling)
- **Framer Motion** (Animations)
- **Retell AI** (Voice AI)
- **Shadcn UI** (Components)

## 📦 Installation

```bash
npm install
```

## 🏃 Développement

```bash
npm run dev
```

Le site sera accessible sur `http://localhost:8081`

## 🔑 Configuration

1. Copier `.env.example` en `.env`
2. Remplir avec vos clés API Retell AI

```env
VITE_RETELL_API_KEY=your_api_key_here
VITE_RETELL_AGENT_RESTAURANT=your_agent_id_here
VITE_RETELL_AGENT_SALON=your_agent_id_here
VITE_RETELL_AGENT_GARAGE=your_agent_id_here
```

## 📝 Build

```bash
npm run build
```

## ⚠️ Important

Ne jamais commit les fichiers `.env` contenant les vraies clés API !

## 📄 Licence

Tous droits réservés




import pytube

if __name__ == "__main__":
    video_url = "https://www.youtube.com/watch?v=Qma7wnicDnk"
    youtube = pytube.YouTube(video_url)
    video = youtube.streams.first()
    video.download('./video')

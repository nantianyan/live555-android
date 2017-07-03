LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	AC3AudioFileServerMediaSubsession.cpp       H264or5VideoFileSink.cpp                       MP3StreamState.cpp                           OggFileSink.cpp \
	AC3AudioRTPSink.cpp                         H264or5VideoRTPSink.cpp                        MP3Transcoder.cpp                            OnDemandServerMediaSubsession.cpp \
	AC3AudioRTPSource.cpp                       H264or5VideoStreamDiscreteFramer.cpp           MPEG1or2AudioRTPSink.cpp                     ourMD5.cpp \
	AC3AudioStreamFramer.cpp                    H264or5VideoStreamFramer.cpp                   MPEG1or2AudioRTPSource.cpp                   OutputFile.cpp \
	ADTSAudioFileServerMediaSubsession.cpp      H264VideoFileServerMediaSubsession.cpp         MPEG1or2AudioStreamFramer.cpp                PassiveServerMediaSubsession.cpp \
	ADTSAudioFileSource.cpp                     H264VideoFileSink.cpp                          MPEG1or2Demux.cpp                            ProxyServerMediaSession.cpp \
	AMRAudioFileServerMediaSubsession.cpp       H264VideoRTPSink.cpp                           MPEG1or2DemuxedElementaryStream.cpp          QCELPAudioRTPSource.cpp \
	AMRAudioFileSink.cpp                        H264VideoRTPSource.cpp                         MPEG1or2DemuxedServerMediaSubsession.cpp     QuickTimeFileSink.cpp \
	AMRAudioFileSource.cpp                      H264VideoStreamDiscreteFramer.cpp              MPEG1or2FileServerDemux.cpp                  QuickTimeGenericRTPSource.cpp \
	AMRAudioRTPSink.cpp                         H264VideoStreamFramer.cpp                      MPEG1or2VideoFileServerMediaSubsession.cpp   RTCP.cpp \
	AMRAudioRTPSource.cpp                       H265VideoFileServerMediaSubsession.cpp         MPEG1or2VideoRTPSink.cpp                     RTPInterface.cpp \
	AMRAudioSource.cpp                          H265VideoFileSink.cpp                          MPEG1or2VideoRTPSource.cpp                   RTPSink.cpp \
	AudioInputDevice.cpp                        H265VideoRTPSink.cpp                           MPEG1or2VideoStreamDiscreteFramer.cpp        RTPSource.cpp \
	AudioRTPSink.cpp                            H265VideoRTPSource.cpp                         MPEG1or2VideoStreamFramer.cpp                RTSPClient.cpp \
	AVIFileSink.cpp                             H265VideoStreamDiscreteFramer.cpp              MPEG2IndexFromTransportStream.cpp            RTSPCommon.cpp \
	Base64.cpp                                  H265VideoStreamFramer.cpp                      MPEG2TransportFileServerMediaSubsession.cpp  RTSPRegisterSender.cpp \
	BasicUDPSink.cpp                            InputFile.cpp                                  MPEG2TransportStreamAccumulator.cpp          RTSPServer.cpp \
	BasicUDPSource.cpp                          JPEGVideoRTPSink.cpp                           MPEG2TransportStreamFramer.cpp               RTSPServerRegister.cpp \
	BitVector.cpp                               JPEGVideoRTPSource.cpp                         MPEG2TransportStreamFromESSource.cpp         RTSPServerSupportingHTTPStreaming.cpp \
	ByteStreamFileSource.cpp                    JPEGVideoSource.cpp                            MPEG2TransportStreamFromPESSource.cpp        ServerMediaSession.cpp \
	ByteStreamMemoryBufferSource.cpp            Locale.cpp                                     MPEG2TransportStreamIndexFile.cpp            SimpleRTPSink.cpp \
	ByteStreamMultiFileSource.cpp               MatroskaDemuxedTrack.cpp                       MPEG2TransportStreamMultiplexor.cpp          SimpleRTPSource.cpp \
	DeviceSource.cpp                            MatroskaFile.cpp                               MPEG2TransportStreamTrickModeFilter.cpp      SIPClient.cpp \
	DigestAuthentication.cpp                    MatroskaFileParser.cpp                         MPEG2TransportUDPServerMediaSubsession.cpp   StreamParser.cpp \
	DVVideoFileServerMediaSubsession.cpp        MatroskaFileServerDemux.cpp                    MPEG4ESVideoRTPSink.cpp                      StreamReplicator.cpp \
	DVVideoRTPSink.cpp                          MatroskaFileServerMediaSubsession.cpp          MPEG4ESVideoRTPSource.cpp                    T140TextRTPSink.cpp \
	DVVideoRTPSource.cpp                        Media.cpp                                      MPEG4GenericRTPSink.cpp                      TCPStreamSink.cpp \
	DVVideoStreamFramer.cpp                     MediaSession.cpp                               MPEG4GenericRTPSource.cpp                    TextRTPSink.cpp \
	EBMLNumber.cpp                              MediaSink.cpp                                  MPEG4LATMAudioRTPSink.cpp                    TheoraVideoRTPSink.cpp \
	FileServerMediaSubsession.cpp               MediaSource.cpp                                MPEG4LATMAudioRTPSource.cpp                  TheoraVideoRTPSource.cpp \
	FileSink.cpp                                MP3ADU.cpp                                     MPEG4VideoFileServerMediaSubsession.cpp      uLawAudioFilter.cpp \
	FramedFileSource.cpp                        MP3ADUdescriptor.cpp                           MPEG4VideoStreamDiscreteFramer.cpp           VideoRTPSink.cpp \
	FramedFilter.cpp                            MP3ADUinterleaving.cpp                         MPEG4VideoStreamFramer.cpp                   VorbisAudioRTPSink.cpp \
	FramedSource.cpp                            MP3ADURTPSink.cpp                              MPEGVideoStreamFramer.cpp                    VorbisAudioRTPSource.cpp \
	GenericMediaServer.cpp                      MP3ADURTPSource.cpp                            MPEGVideoStreamParser.cpp                    VP8VideoRTPSink.cpp \
	GSMAudioRTPSink.cpp                         MP3ADUTranscoder.cpp                           MultiFramedRTPSink.cpp                       VP8VideoRTPSource.cpp \
	H261VideoRTPSource.cpp                      MP3AudioFileServerMediaSubsession.cpp          MultiFramedRTPSource.cpp                     VP9VideoRTPSink.cpp \
	H263plusVideoFileServerMediaSubsession.cpp  MP3AudioMatroskaFileServerMediaSubsession.cpp  OggDemuxedTrack.cpp                          VP9VideoRTPSource.cpp \
	H263plusVideoRTPSink.cpp                    MP3FileSource.cpp                              OggFile.cpp                                  WAVAudioFileServerMediaSubsession.cpp \
	H263plusVideoRTPSource.cpp                  MP3Internals.cpp                               OggFileParser.cpp                            WAVAudioFileSource.cpp \
	H263plusVideoStreamFramer.cpp               MP3InternalsHuffman.cpp                        OggFileServerDemux.cpp \
	H263plusVideoStreamParser.cpp               MP3InternalsHuffmanTable.cpp                   OggFileServerMediaSubsession.cpp \
	rtcp_from_spec.c \

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/../UsageEnvironment/include \
	$(LOCAL_PATH)/../groupsock/include \
	$(LOCAL_PATH)/../BasicUsageEnvironment/include

LOCAL_SHARED_LIBRARIES:= \
	libbinder                       \
	libcutils                       \
	liblog                          \
	libutils                        \

LOCAL_CFLAGS += -fexceptions

LOCAL_MODULE:= libliveMedia 

LOCAL_MODULE_TAGS:= optional

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)


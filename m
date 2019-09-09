Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 232ADAD1EC
	for <lists+linux-rockchip@lfdr.de>; Mon,  9 Sep 2019 04:29:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=csqOPssWPVDmPeUfhNQdHzMK2WusSbhzEBLxLe2bl2U=; b=ut8m2tIzC42PZ1
	bJQoMvMZmxzLecWt5DaoO0TImceYZMSMSa/1WwE1ivMf43VLkPXyubXm8nr/evoBjqme0fx8fuiSO
	8M7+ptaJvRI+oyCFtMr4CwvGpH+k6dAcELSJv+K/PBWRroMsjHA9e2xzpFhi3ksWJAJFp8OgEaM2D
	Zj9VuQXKvYx/kEaURQq4iPq91KedBmDXhp6+SypVNKmRvWsZbGbH7wkFqO5qOQTPa+y4bXlYsbfQE
	cVABk9hN71onzMPb/0FQDzqJWQh8dQ7bwba7/LJxAfs1uvl3u2GMTvCn+8b9LpyjdHzzOv4g8085z
	RHNILxhO9OPB7hWefxqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i79R7-0007qz-U8; Mon, 09 Sep 2019 02:29:49 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i79R4-0007qI-R8
 for linux-rockchip@lists.infradead.org; Mon, 09 Sep 2019 02:29:48 +0000
Received: by mail-vs1-xe42.google.com with SMTP id b123so7751282vsb.5
 for <linux-rockchip@lists.infradead.org>; Sun, 08 Sep 2019 19:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Y2/W6X8RIBD7ZB6d20eHb8WYBvjeqbEXBR3mSTcD4a8=;
 b=NaZe1bMSosVmRjyF8Y26Gn3nksq5DlLd37SKKf0QREljQ315/mQu4ty3XLaVIcgq7m
 jROG9k7kp/Ni0dsLpCA+4zuESixoDlTGZXCTR5MxM5drT+psEmUwxvo4z/lNKb/3zuSJ
 NwB4OxQ4+46q4B6VDevwsxLJUgarDS2mtF2PI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y2/W6X8RIBD7ZB6d20eHb8WYBvjeqbEXBR3mSTcD4a8=;
 b=CCUkQDhmOoZN2UJKuiRfIhjL7mIArvzkWx5raMen9eUxIBqR/ZWPzoNlel4T0H7gd8
 PDHEbMf4TU/3AT98UNzTaGiIyHvXZQQdyTN81KMvuww1pudJGTSRm+eiwuXavQUbSd8u
 XD5lTNBk6OjVinmFDUNSEXyZYcsJrHEUCataCABgGHGbAbOhXbFlJp9mUYCAwl86qy7k
 ZrCj0DAHM/OB7kdW3tCAJM+4G2Oq0whPhU/4MvibmsN3Zyl5pxLUP+VRKnBSHXd1y7IM
 HDMc4P62xTpzkD1SuHRxtMaMB+SW9BuOlwBOxDimGKCbIedVszpKhDFHCtg565Oodad5
 21XA==
X-Gm-Message-State: APjAAAVoLXnP7i5ezl+R0bNL4P230/nw6ldArdARwhdDcW39mp7w/dJV
 C7pUQ4QZkow5Tqoa9GQnbO28XJgnJ/slezyRhKLfvg==
X-Google-Smtp-Source: APXvYqwWjM7mXqVLEALITu2ZudM1+60H+h9ACWptaChKnsHFCcpEGVxlQ997Y5xalAKuQy8qfgxiI164/whKCrEzQvo=
X-Received: by 2002:a05:6102:86:: with SMTP id
 t6mr6856963vsp.170.1567996184882; 
 Sun, 08 Sep 2019 19:29:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190905094325.33156-1-cychiang@chromium.org>
 <20190908183748.GN13294@shell.armlinux.org.uk>
In-Reply-To: <20190908183748.GN13294@shell.armlinux.org.uk>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Mon, 9 Sep 2019 10:29:18 +0800
Message-ID: <CAFv8NwJV2ogJu99AN2T4OusDJ-h=PTHQHABNYtcAdazePJ7gBQ@mail.gmail.com>
Subject: Re: [PATCH v2] drm: bridge/dw_hdmi: add audio sample channel status
 setting
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_192946_886186_F90FF5AF 
X-CRM114-Status: GOOD (  29.55  )
X-Spam-Score: -7.6 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>, kuninori.morimoto.gx@renesas.com,
 cain.cai@rock-chips.com, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-kernel <linux-kernel@vger.kernel.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, sam@ravnborg.org,
 Xing Zheng <zhengxing@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Dylan Reid <dgreid@chromium.org>, tzungbi@chromium.org,
 Jonas Karlman <jonas@kwiboo.se>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 =?UTF-8?B?6JSh5p6r?= <eddie.cai@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Doug Anderson <dianders@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>, kuankuan.y@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Sep 9, 2019 at 2:38 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Thu, Sep 05, 2019 at 05:43:25PM +0800, Cheng-Yi Chiang wrote:
> > From: Yakir Yang <ykk@rock-chips.com>
> >
> > When transmitting IEC60985 linear PCM audio, we configure the
> > Aduio Sample Channel Status information of all the channel
> > status bits in the IEC60958 frame.
> > Refer to 60958-3 page 10 for frequency, original frequency, and
> > wordlength setting.
> >
> > This fix the issue that audio does not come out on some monitors
> > (e.g. LG 22CV241)
> >
> > Note that these registers are only for interfaces:
> > I2S audio interface, General Purpose Audio (GPA), or AHB audio DMA
> > (AHBAUDDMA).
> > For S/PDIF interface this information comes from the stream.
> >
> > Currently this function dw_hdmi_set_channel_status is only called
> > from dw-hdmi-i2s-audio in I2S setup.
> >
> > Signed-off-by: Yakir Yang <ykk@rock-chips.com>
> > Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > ---
> >  Original patch by Yakir Yang is at
> >
> >  https://lore.kernel.org/patchwork/patch/539653/
> >
> >  Change from v1 to v2:
> >  1. Remove the version check because this will only be called by
> >     dw-hdmi-i2s-audio, and the registers are available in I2S setup.
> >  2. Set these registers in dw_hdmi_i2s_hw_params.
> >  3. Fix the sample width setting so it can use 16 or 24 bits.
> >
> >  .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   |  1 +
> >  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     | 70 +++++++++++++++++++
> >  drivers/gpu/drm/bridge/synopsys/dw-hdmi.h     | 20 ++++++
> >  include/drm/bridge/dw_hdmi.h                  |  2 +
> >  4 files changed, 93 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> > index 34d8e837555f..b801a28b0f17 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> > @@ -102,6 +102,7 @@ static int dw_hdmi_i2s_hw_params(struct device *dev, void *data,
> >       }
> >
> >       dw_hdmi_set_sample_rate(hdmi, hparms->sample_rate);
> > +     dw_hdmi_set_channel_status(hdmi, hparms->sample_width);
> >       dw_hdmi_set_channel_count(hdmi, hparms->channels);
> >       dw_hdmi_set_channel_allocation(hdmi, hparms->cea.channel_allocation);
> >
>
> dw_hdmi_i2s_hw_params() is passed the channel status data in
> hparams->iec.status  Rather than re-creating it afresh in the driver,
> I'd recommend programming the already supplied channel status data
> into the registers.
>

Hi Russell,
Thank you for pointing this out.
I did not realize that the status data is already set.
I will fix in v3 to make this patch much simpler.

> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > index bd65d0479683..d1daa369c8ae 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > @@ -582,6 +582,76 @@ static unsigned int hdmi_compute_n(unsigned int freq, unsigned long pixel_clk)
> >       return n;
> >  }
> >
> > +/*
> > + * When transmitting IEC60958 linear PCM audio, these registers allow to
> > + * configure the channel status information of all the channel status
> > + * bits in the IEC60958 frame. For the moment this configuration is only
> > + * used when the I2S audio interface, General Purpose Audio (GPA),
> > + * or AHB audio DMA (AHBAUDDMA) interface is active
> > + * (for S/PDIF interface this information comes from the stream).
> > + */
> > +void dw_hdmi_set_channel_status(struct dw_hdmi *hdmi,
> > +                             unsigned int sample_width)
> > +{
> > +     u8 aud_schnl_samplerate;
> > +     u8 aud_schnl_8;
> > +     u8 word_length_bits;
> > +
> > +     switch (hdmi->sample_rate) {
> > +     case 32000:
> > +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_32K;
> > +             break;
> > +     case 44100:
> > +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_44K1;
> > +             break;
> > +     case 48000:
> > +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_48K;
> > +             break;
> > +     case 88200:
> > +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_88K2;
> > +             break;
> > +     case 96000:
> > +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_96K;
> > +             break;
> > +     case 176400:
> > +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_176K4;
> > +             break;
> > +     case 192000:
> > +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_192K;
> > +             break;
> > +     case 768000:
> > +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_768K;
> > +             break;
> > +     default:
> > +             dev_warn(hdmi->dev, "Unsupported audio sample rate (%u)\n",
> > +                      hdmi->sample_rate);
> > +             return;
> > +     }
> > +
> > +     /* set channel status register */
> > +     hdmi_modb(hdmi, aud_schnl_samplerate, HDMI_FC_AUDSCHNLS7_SMPRATE_MASK,
> > +               HDMI_FC_AUDSCHNLS7);
> > +
> > +     /*
> > +      * Set original frequency to be the same as frequency.
> > +      * Use one-complement value as stated in IEC60958-3 page 13.
> > +      */
> > +     aud_schnl_8 = (~aud_schnl_samplerate) <<
> > +                     HDMI_FC_AUDSCHNLS8_ORIGSAMPFREQ_OFFSET;
> > +
> > +     /*
> > +      * Refer to IEC60958-3 page 12. We can accept 16 bits or 24 bits.
> > +      * Otherwise, set the register to 0t o indicate using default value.
> > +      */
> > +     word_length_bits = (sample_width == 16) ? 0x2 :
> > +                         ((sample_width == 24) ? 0xb : 0);
> > +
> > +     aud_schnl_8 |= word_length_bits << HDMI_FC_AUDSCHNLS8_WORDLEGNTH_OFFSET;
> > +
> > +     hdmi_writeb(hdmi, aud_schnl_8, HDMI_FC_AUDSCHNLS8);
> > +}
> > +EXPORT_SYMBOL_GPL(dw_hdmi_set_channel_status);
>
> As mentioned above, the channel status data is actually already
> provided - so we don't really need the above at all.  It just
> needs the data programmed into the registers.
>
ACK
> > +
> >  static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
> >       unsigned long pixel_clk, unsigned int sample_rate)
> >  {
> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
> > index 6988f12d89d9..619ebc1c8354 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
> > @@ -158,6 +158,17 @@
> >  #define HDMI_FC_SPDDEVICEINF                    0x1062
> >  #define HDMI_FC_AUDSCONF                        0x1063
> >  #define HDMI_FC_AUDSSTAT                        0x1064
> > +#define HDMI_FC_AUDSV                           0x1065
> > +#define HDMI_FC_AUDSU                           0x1066
> > +#define HDMI_FC_AUDSCHNLS0                      0x1067
> > +#define HDMI_FC_AUDSCHNLS1                      0x1068
> > +#define HDMI_FC_AUDSCHNLS2                      0x1069
> > +#define HDMI_FC_AUDSCHNLS3                      0x106a
> > +#define HDMI_FC_AUDSCHNLS4                      0x106b
> > +#define HDMI_FC_AUDSCHNLS5                      0x106c
> > +#define HDMI_FC_AUDSCHNLS6                      0x106d
> > +#define HDMI_FC_AUDSCHNLS7                      0x106e
> > +#define HDMI_FC_AUDSCHNLS8                      0x106f
> >  #define HDMI_FC_DATACH0FILL                     0x1070
> >  #define HDMI_FC_DATACH1FILL                     0x1071
> >  #define HDMI_FC_DATACH2FILL                     0x1072
> > @@ -706,6 +717,15 @@ enum {
> >  /* HDMI_FC_AUDSCHNLS7 field values */
> >       HDMI_FC_AUDSCHNLS7_ACCURACY_OFFSET = 4,
> >       HDMI_FC_AUDSCHNLS7_ACCURACY_MASK = 0x30,
> > +     HDMI_FC_AUDSCHNLS7_SMPRATE_MASK = 0x0f,
> > +     HDMI_FC_AUDSCHNLS7_SMPRATE_192K = 0xe,
> > +     HDMI_FC_AUDSCHNLS7_SMPRATE_176K4 = 0xc,
> > +     HDMI_FC_AUDSCHNLS7_SMPRATE_96K = 0xa,
> > +     HDMI_FC_AUDSCHNLS7_SMPRATE_768K = 0x9,
> > +     HDMI_FC_AUDSCHNLS7_SMPRATE_88K2 = 0x8,
> > +     HDMI_FC_AUDSCHNLS7_SMPRATE_32K = 0x3,
> > +     HDMI_FC_AUDSCHNLS7_SMPRATE_48K = 0x2,
> > +     HDMI_FC_AUDSCHNLS7_SMPRATE_44K1 = 0x0,
>
> These look very much like the IEC958_AES* consumer definitions in
> include/sound/asoundef.h.
ACK. Will remove in v3.
>
> >  /* HDMI_FC_AUDSCHNLS8 field values */
> >       HDMI_FC_AUDSCHNLS8_ORIGSAMPFREQ_MASK = 0xf0,
> > diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
> > index cf528c289857..12144d2f80f4 100644
> > --- a/include/drm/bridge/dw_hdmi.h
> > +++ b/include/drm/bridge/dw_hdmi.h
> > @@ -156,6 +156,8 @@ void dw_hdmi_setup_rx_sense(struct dw_hdmi *hdmi, bool hpd, bool rx_sense);
> >
> >  void dw_hdmi_set_sample_rate(struct dw_hdmi *hdmi, unsigned int rate);
> >  void dw_hdmi_set_channel_count(struct dw_hdmi *hdmi, unsigned int cnt);
> > +void dw_hdmi_set_channel_status(struct dw_hdmi *hdmi,
> > +                             unsigned int sample_width);
> >  void dw_hdmi_set_channel_allocation(struct dw_hdmi *hdmi, unsigned int ca);
> >  void dw_hdmi_audio_enable(struct dw_hdmi *hdmi);
> >  void dw_hdmi_audio_disable(struct dw_hdmi *hdmi);
> > --
> > 2.23.0.187.g17f5b7556c-goog
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> >
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

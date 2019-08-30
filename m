Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89633A2D08
	for <lists+linux-rockchip@lfdr.de>; Fri, 30 Aug 2019 04:56:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8b6jcVwjPoicggW2iEVr6BJFX/xVXYYys4ncb6zlpNw=; b=q2tgUcIB2gZsru
	eMth3hRH18eh2MDFqJkarRZh66XEBIN/Q4C4q/rcdoaBHISh7BTGdg/vB+5naG3+v3Gzcs8mDuTO+
	jFm6yqVbMfY0pjEzTwr/NeaEWzt0bXwvD8k6mhgnSWUVD/MyxK1UIryUUVGbqJjdSuaQEoBv6p9vd
	cncsZ6OHXR6u90skXTDm3sN3qzYeeY7gGEcrHVgbjn4IrV5goe4wozZidCokLT07yJQqLHIgRSyjR
	85hD4dIbVYPeNIPgAh7okEnHbvc+Y8+kUCAGhvuvj3TlB+XCy3SE6zxZkd2T99iJS97IQ72OrTOKf
	K0X90keNjGgIBe8Pm+BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3X4z-0002Jf-6A; Fri, 30 Aug 2019 02:56:01 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3X4i-00028S-1N
 for linux-rockchip@lists.infradead.org; Fri, 30 Aug 2019 02:55:45 +0000
Received: by mail-ua1-x944.google.com with SMTP id m8so1862090uap.2
 for <linux-rockchip@lists.infradead.org>; Thu, 29 Aug 2019 19:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uVJP3tNQZmRfMHp/W2ZEuVlB3ztV/VuTs152oodDoRA=;
 b=go/AeEsI5vC+mODTwi/w5PsQtEjcwg1f3Pf9r94z/spWywhIHshzlHgOAz73WeypOX
 pqMIDya9cWyUswo1xPqA+BADMwbb805CpsmQht+9dYBhC6NqBViosIEVvwIli8l3sTlO
 1jIG9p8bhTKdxA20ytec9mf4cYGdg+LwRAdxU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uVJP3tNQZmRfMHp/W2ZEuVlB3ztV/VuTs152oodDoRA=;
 b=P382OY8cjG1LxoaMYPNOUrcW+/MuYHC+jKp9XPgyzebcodK3c1KZuSwpiTaDuirdsA
 FHlaNFxTG1tWfD7OzFegR3whROxDIRNpgx0Z9YwmUb522E3XtlmTiqdd4ddQxbdcH25T
 c6hQulLbEMGT2W64I6wekKAytf62yzrxuNZq0KQwqOVhau0M1ECsQ9J/KsjwCbQaoI+c
 MC6ML7z9hoB/XKwFznsvcu8YeIfiAn5TLIEnBNm5qXtFoe6pHdnutqLRjaleouRn8J7J
 CTIyC4CjbjT1mFxrHl5aNKc5SpH/CzT3Bv6E4recM/ICCXh4EnDMaqQvg7JCpZyNshrM
 RRlA==
X-Gm-Message-State: APjAAAU/0T7zbf6xTGerT6Pd3K5qQj0TtUFq2cyAUKyRRTBs/Oz3MS77
 HqVb38004L5sWbe0tQGr3W/Sav0iI/G/MumBP9c/ZQ==
X-Google-Smtp-Source: APXvYqz3y2+iMq8OG/5tEVPvpxYHj7wpUTGqFySYc0DUG/K3JsZPiNj8noweU6gAsRnU3oLPZiigq/TH0naxasIEv+E=
X-Received: by 2002:ab0:7c3:: with SMTP id d3mr6638328uaf.131.1567133739477;
 Thu, 29 Aug 2019 19:55:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190717083327.47646-1-cychiang@chromium.org>
 <CA+Px+wX4gbntkd6y8NN8xwXpZLD4MH9rTeHcW9+Ndtw=3_mWBw@mail.gmail.com>
In-Reply-To: <CA+Px+wX4gbntkd6y8NN8xwXpZLD4MH9rTeHcW9+Ndtw=3_mWBw@mail.gmail.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Fri, 30 Aug 2019 10:55:12 +0800
Message-ID: <CAFv8NwLiY+ro0L4c5vjSOGN8jA-Qr4zm2OWvVHkiuoa7_4e2Fg@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] Add HDMI jack support on RK3288
To: Tzung-Bi Shih <tzungbi@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_195544_087979_2CB0EC06 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ALSA development <alsa-devel@alsa-project.org>,
 Douglas Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Takashi Iwai <tiwai@suse.com>,
 tzungbi@chromium.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 Dylan Reid <dgreid@chromium.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 6:28 PM Tzung-Bi Shih <tzungbi@google.com> wrote:
>
> On Wed, Jul 17, 2019 at 4:33 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
> >
> > This patch series supports HDMI jack reporting on RK3288, which uses
> > DRM dw-hdmi driver and hdmi-codec codec driver.
> >
> > The previous discussion about reporting jack status using hdmi-notifier
> > and drm_audio_component is at
> >
> > https://lore.kernel.org/patchwork/patch/1083027/
> >
> > The new approach is to use a callback mechanism that is
> > specific to hdmi-codec.
> >
> > Changes from v4 to v5:
> > - synopsys/Kconfig: Remove the incorrect dependency change in v4.
> > - rockchip/Kconfig: Add dependency of hdmi-codec when it is really need
> >   for jack support.
> >
> > Cheng-Yi Chiang (5):
> >   ASoC: hdmi-codec: Add an op to set callback function for plug event
> >   drm: bridge: dw-hdmi: Report connector status using callback
> >   drm: dw-hdmi-i2s: Use fixed id for codec device
> >   ASoC: rockchip_max98090: Add dai_link for HDMI
> >   ASoC: rockchip_max98090: Add HDMI jack support
> >
> LGTM.
>
> Reviewed-by: Tzung-Bi Shih <tzungbi@google.com>

Hi Daniel,
Do you have further concern on this patch series related to hdmi-codec
and drm part ?
We would like to merge this patch series if possible.
They will be needed in many future chrome projects for HDMI audio jack
detection.
Thanks a lot!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

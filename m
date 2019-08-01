Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5947D61D
	for <lists+linux-rockchip@lfdr.de>; Thu,  1 Aug 2019 09:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pNm1fiPWHHwa4X2nUIUPyJf271jYNRjkWdXNfg2WXbE=; b=Fm39qGskLVCWE2
	ggRTYW0U4agOmmDmDyNCAPHWrdh11w5OeMFAX/BcxjTEYm4j/qihmL2vSFAGL6i/g0VVVgcIe4LGJ
	gLh7z7ltiz7ZaDEO/1Y6P/6MNad6irw7ZJKpsi76aj88Tj0PKcstnxgkr4ORyT67zz/HcuUNW2HBe
	Dqqfsd+QDXuYA4YxIG9GTtKlF2TAONcOqTAv/CfRWaurLfm9rPsDW4ra39AXwyigN14qP6yx3PkdH
	QNNR9KmHJ0VVRzkUco+/tKMYmUkBuWByHpT6a9m32R3UCrlhoMjsQrzGeF4sRC4JhmQ2dXVV+4bEQ
	vlZPtIV5WknuU21iK1MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht5Gt-0000tn-9x; Thu, 01 Aug 2019 07:13:07 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht5Gn-0000rt-2O
 for linux-rockchip@lists.infradead.org; Thu, 01 Aug 2019 07:13:02 +0000
Received: by mail-ed1-x541.google.com with SMTP id e3so68148837edr.10
 for <linux-rockchip@lists.infradead.org>; Thu, 01 Aug 2019 00:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k3HgBG8dgms5aeg3KKVbilyEzZjF4gJI3+pzI6ZqB7c=;
 b=DgDNW/rwQ9RQMEgFi3r3eO0bKXwgH3+xgNXhRN9nikI0MID4Y8Q+aITx64bwslu/R6
 CUVtBW5HMK2/yH4JfolC0xoP4qpayTQPDitAKqzlki4L5sdd+3Id9L9a0ytS0LUbJNbf
 c64BC68THi/AmMpHoomg8lsILIyEMdueFVxVw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k3HgBG8dgms5aeg3KKVbilyEzZjF4gJI3+pzI6ZqB7c=;
 b=nUzq6W3zDX8SH4RYJyM6cXhB1fS70oxRC45OWgXEv5kHxK6EHI28E86Gh5wJQUSo3H
 mT9oq2aoGJ0IvisbDDE5TL3dNNikhaSWMWxis3c7+5Nwvltzsm8nHESKDl86GUrY4Omv
 qYWaSekEzHj+LuYVUOdjqbSa7Jdg6oMSdmlPrCqd5M8O1CZrAxOSzLswwcVjgAQ7K88F
 ios7QBDrv3SMbnh2PTT654gxM5m6RJnwo/+1CKJRw09WhEaFRMXiOd9nZErlVtWea5Oo
 jQzUmvJ/2Tk049UBbZry3/L3IzvfpI+3wGaaglxuQlX620JUWKAiwrgHf2fo0wTvBMSx
 yPuQ==
X-Gm-Message-State: APjAAAXcOA0Qu1f6ATzebTkXoWSvmlPr57o0qiHqiu4ZgOYoabPo7sfh
 e7elCvZyy8+bUb/nRL7PluMQVx5vEhHzEw==
X-Google-Smtp-Source: APXvYqwsXXw221Ph8EOmiOhwpHMXodF4NrziB53YD/nejbhwlECwXH4/iprG6fEeE1QoQwJjo4cpdA==
X-Received: by 2002:a50:b1e7:: with SMTP id
 n36mr112284262edd.227.1564643578667; 
 Thu, 01 Aug 2019 00:12:58 -0700 (PDT)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com.
 [209.85.221.43])
 by smtp.gmail.com with ESMTPSA id u26sm17727478eda.22.2019.08.01.00.12.56
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 00:12:57 -0700 (PDT)
Received: by mail-wr1-f43.google.com with SMTP id y4so72360306wrm.2
 for <linux-rockchip@lists.infradead.org>; Thu, 01 Aug 2019 00:12:56 -0700 (PDT)
X-Received: by 2002:a5d:5012:: with SMTP id e18mr18039721wrt.166.1564643575835; 
 Thu, 01 Aug 2019 00:12:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190619121540.29320-1-boris.brezillon@collabora.com>
 <20190619121540.29320-8-boris.brezillon@collabora.com>
 <CAHD77HksotqFBTE84rRM=DuNFX=YJPs=YnsuFkaN-pWUNCtoxA@mail.gmail.com>
 <20190801070410.GA22382@aptenodytes>
In-Reply-To: <20190801070410.GA22382@aptenodytes>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 1 Aug 2019 16:12:43 +0900
X-Gmail-Original-Message-ID: <CAAFQd5BPFLqu0JvyxTfS9UAfWanFcXzFtuJ9jcPmHV+XSq6cvQ@mail.gmail.com>
Message-ID: <CAAFQd5BPFLqu0JvyxTfS9UAfWanFcXzFtuJ9jcPmHV+XSq6cvQ@mail.gmail.com>
Subject: Re: [PATCH 7/9] media: hantro: Add core bits to support H264 decoding
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_001301_154781_46B11D63 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Hertz Wong <hertz.wong@rock-chips.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Aug 1, 2019 at 4:04 PM Paul Kocialkowski
<paul.kocialkowski@bootlin.com> wrote:
>
> Hi,
>
> On Thu 01 Aug 19, 13:06, Tomasz Figa wrote:
> > Hi Boris,
> >
> > On Wed, Jun 19, 2019 at 9:15 PM Boris Brezillon
> > <boris.brezillon@collabora.com> wrote:
> > [snip]
> > > @@ -533,10 +535,21 @@ hantro_queue_setup(struct vb2_queue *vq, unsigned int *num_buffers,
> > >                 return -EINVAL;
> > >         }
> > >
> > > +       /* The H264 decoder needs extra size on the output buffer. */
> > > +       if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_H264_SLICE_RAW)
> > > +               extra_size0 = 128 * DIV_ROUND_UP(pixfmt->width, 16) *
> > > +                             DIV_ROUND_UP(pixfmt->height, 16);
> > > +
> >
> > I wonder if this shouldn't be accounted for already in the sizeimage
> > returned by TRY_/S_FMT, so that the application can know the required
> > buffer size if it uses some external allocator and DMABUF memory type.
> > I know we had it like this in our downstream code, but it wasn't the
> > problem because we use minigbm, where we explicitly add the same
> > padding in the rockchip backend. Any thoughts?
>
> Does the extra size have to be allocated along with the buffer?
>
> On cedrus, we have a need for a similar side-buffer but give it a dedicated CMA
> allocation, which should allow dma-buf-imported buffers.

Yes, the decoder stores motion vectors (IIRC) after the image data.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

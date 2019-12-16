Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6391A11FD10
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 04:03:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HQme7eOgZSx+U/eiPv86MzCjqlv5EuFE1N/2D1NgUn4=; b=QH7xm9YR45cPDT
	EGoUJlQPPxoW9/PrtsHImwYnLptsJyr5SER6gGQQgl0N646CL0lPkP+Q1wssmhjNrI0/GEefXZ3eP
	gtltpBjFZT1Lq9kxmYHmacgOhIrwsPDabOYRG/mDfohAdVhOAVBhwVD+G6vOKWxpVxaxs9iiJPQLb
	7v6LRTdPkJp4O4aybUcz+llQ/BBjEIGnjVS4OV64k494s4OmfdIufqeglXmkk7VUt71Yjh9g9SHB3
	KcKB8vvKKHldY2eCken7uUCIbHYNBVJjmFLUYFCw+40oqzUWhIosLjFzibh5oNh7CW6XCcvuQpaES
	Dhg4QrnG8/0DRz+DVeXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iggfg-0000Fr-Fl; Mon, 16 Dec 2019 03:03:44 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iggfc-0000Eo-Bx; Mon, 16 Dec 2019 03:03:41 +0000
Received: by mail-ed1-f65.google.com with SMTP id dc19so3761810edb.10;
 Sun, 15 Dec 2019 19:03:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FENccwgG3uhDFjFer/TFmu057ClxmW4CVGbxtoIFMB4=;
 b=OKiw/3vViTRUmmw7TrQv4lMqLd9UxJeKXh3GEnO630OAucAdF+4hJLBXdIWsTM200V
 LmWw7waEwdG+/FueEPUemcl86OdPAF/tkIweFftbzKFxoMbE5B+t+H37tGr9qObxWopm
 afaKbVjxpUCVHDCELffEsKxyaWhvZLUTIWkcwgsY6D7DbvbTnslJOCwU66MY1bYk0B4H
 YVIkY0CaXxe/uLJSKgjGsxIwbW5w49S2ilmjluY/SrJGMsNlQLCJLsEslEYxaK7GuUR/
 6Bvco00pehyddrxJPW5WhxB5/jViFBShx69sN+Q/iM6RMDy6679P/ik6O5RUzHOD4trB
 QbJQ==
X-Gm-Message-State: APjAAAUH8GfuI0Xo49n48VHgETln2WFUVSs7scmLCa6CqhLD5N6lYpMM
 2PJzqQ8RUVooSi95K9DM+Wc8J/MKNaA=
X-Google-Smtp-Source: APXvYqyu9q3VZXqysBLPVvk7Ai93wo73NvjY1PVPNz3BJIqe/LaBRzrxtjXUO0Wvvz+us7eQXNPpYg==
X-Received: by 2002:a17:906:5808:: with SMTP id
 m8mr23898628ejq.1.1576465417737; 
 Sun, 15 Dec 2019 19:03:37 -0800 (PST)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com.
 [209.85.128.48])
 by smtp.gmail.com with ESMTPSA id x20sm1067599ejo.36.2019.12.15.19.03.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 15 Dec 2019 19:03:37 -0800 (PST)
Received: by mail-wm1-f48.google.com with SMTP id p17so5080721wma.1;
 Sun, 15 Dec 2019 19:03:37 -0800 (PST)
X-Received: by 2002:a7b:cf12:: with SMTP id l18mr29527605wmg.66.1576465416941; 
 Sun, 15 Dec 2019 19:03:36 -0800 (PST)
MIME-Version: 1.0
References: <20191215211223.1451499-1-martin.blumenstingl@googlemail.com>
In-Reply-To: <20191215211223.1451499-1-martin.blumenstingl@googlemail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 16 Dec 2019 11:03:25 +0800
X-Gmail-Original-Message-ID: <CAGb2v6528SUOyefhsnjEwG7vfud3+Ce+_=CM3cM4vKiRcmNXAA@mail.gmail.com>
Message-ID: <CAGb2v6528SUOyefhsnjEwG7vfud3+Ce+_=CM3cM4vKiRcmNXAA@mail.gmail.com>
Subject: Re: [RFC v1 0/1] drm: lima: devfreq and cooling device support
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_190340_409012_CA4EA219 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Rob Herring <robh@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 lima@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, steven.price@arm.com,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 yuq825@gmail.com, Daniel Vetter <daniel@ffwll.ch>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 alyssa.rosenzweig@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 5:12 AM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> This is my attempt at adding devfreq (and cooling device) support to
> the lima driver.
> I didn't have much time to do in-depth testing. However, I'm sending
> this out early because there are many SoCs with Mali-400/450 GPU so
> I want to avoid duplicating the work with somebody else.
>
> The code is derived from panfrost_devfreq.c which is why I kept the
> Collabora copyright in lima_devfreq.c. Please let me know if I should
> drop this or how I can make it more clear that I "borrowed" the code
> from panfrost.

I think it's more common to have separate copyright notices. First you
have yours, then a second paragraph stating the code is derived from
foo, and then attach the copyright statements for foo.

ChenYu

> I am seeking comments in two general areas:
> - regarding the integration into the existing lima code
> - for the actual devfreq code (I had to adapt the panfrost code
>   slightly, because lima uses a bus and a GPU/core clock)
>
> My own TODO list includes "more" testing on various Amlogic SoCs.
> So far I have tested this on Meson8b and Meson8m2 (which both have a
> GPU OPP table defined). However, I still need to test this on a GXL
> board (which is currently missing the GPU OPP table).
>
>
> Martin Blumenstingl (1):
>   drm/lima: Add optional devfreq support
>
>  drivers/gpu/drm/lima/Kconfig        |   1 +
>  drivers/gpu/drm/lima/Makefile       |   3 +-
>  drivers/gpu/drm/lima/lima_devfreq.c | 162 ++++++++++++++++++++++++++++
>  drivers/gpu/drm/lima/lima_devfreq.h |  15 +++
>  drivers/gpu/drm/lima/lima_device.c  |   4 +
>  drivers/gpu/drm/lima/lima_device.h  |  11 ++
>  drivers/gpu/drm/lima/lima_drv.c     |  14 ++-
>  drivers/gpu/drm/lima/lima_sched.c   |   7 ++
>  drivers/gpu/drm/lima/lima_sched.h   |   3 +
>  9 files changed, 217 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/gpu/drm/lima/lima_devfreq.c
>  create mode 100644 drivers/gpu/drm/lima/lima_devfreq.h
>
> --
> 2.24.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

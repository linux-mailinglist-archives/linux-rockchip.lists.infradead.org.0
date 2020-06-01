Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 933781EAE07
	for <lists+linux-rockchip@lfdr.de>; Mon,  1 Jun 2020 20:50:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zdfmdy6of+rqii1jxtib+s5VaGMaq0B5+PEEQP+6s8s=; b=AwdzBLBCYi7BN4
	ffFXh+MkA4WJ9/OI3/GOJJ6Hb7DPfhvt52HckXsLHrZOaJn82rrSlgdH/OyWEnLxd8zqFn40ZK+nd
	nLp9MFU4D9E8GpC8Fwllof7RAB7oTD3Olm1BnKp7vN2fWgPqLphu+6QNW5f5Jl5JRBE19URtoq5Vo
	jTu67MsCP/dp2rrnuDmSBWnQ/EOXPO3AgpXGnGeqa5/AtMdHNo4ABKcuSN11YEG13v0YUOaqe2rxL
	fQ1DaMtLnrTZZeHY/RvgMQxYPsvwdqn5wjwMdC/ejG4f9S/k1D+agjLmD5NGHd66FWMYmAuM3coTq
	LVKBaTUI9oL7N00eJapQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfpWH-0003Qu-58; Mon, 01 Jun 2020 18:50:45 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfpWB-0003Pt-9u
 for linux-rockchip@lists.infradead.org; Mon, 01 Jun 2020 18:50:43 +0000
Received: by mail-ej1-x641.google.com with SMTP id q19so4911261eja.7
 for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2020 11:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G1VMPDaeJfT8+NmaRje7sflS/Zy0f/09GM/fygivpDo=;
 b=eMwUwSMmFyEn7DmLF4myi59y7ESt2HQDfbtUySBAfQf+MVQoCAq2ISQG8jRaF4we3D
 EDsTMPkk77N3GGd43Kw601vDoU1sLinW5DaqzZqH9oHiGqEB+0a6nTXaw0b055PVIEEV
 NQtwRu5bwRqWwQkLq43ahZjfuqUrc7H5hFtF0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G1VMPDaeJfT8+NmaRje7sflS/Zy0f/09GM/fygivpDo=;
 b=Ey62Uq9Y/oMtQ1B4fIFjWfJjMQ9TgqrnYicipL942DdiemV7Ft4VM38RFz7PZ6dksb
 bDSD/ySiqlkMNDi4XsSJduQkcRDwLE+7Q2pRmoj6NTrAjBnv9x+H9bvY6KGNc89t4/5M
 FeSeIa/JTqkH7mzYSsJ/CYraKjtxJQ9S/2JBgc6FRKiivjtRemEb7N9pMpBUYkXHWGm+
 KqR34IxFXjvgZi4qvwJNT5Xwavm6sF6DNUob5PfuYCjxb+WH0RLI8o0y10U5fEBra2a1
 EQu0aTzFUoLjtIGCK2CAV0pfETaIGuw1mW1cN4q+hEnj4rS7Wiy9AoYiHyIdcE/DqGW7
 IuSg==
X-Gm-Message-State: AOAM532cvUdqWz/f7iS+dMXrY24YS+gWosKMXdpJzzTALJQ0Z5maIsRY
 Pu0u5ysLmxlXI1CAZD2ylEtXhf6nViH5vQ==
X-Google-Smtp-Source: ABdhPJw8znmR4Wq6cJ7ZICSnnFrKAWiOqo1WQFYT8iHqBfxz9BasdeajKPryFEviXuUSPNgsovsCvQ==
X-Received: by 2002:a17:906:4554:: with SMTP id
 s20mr14761870ejq.241.1591037436936; 
 Mon, 01 Jun 2020 11:50:36 -0700 (PDT)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com.
 [209.85.128.52])
 by smtp.gmail.com with ESMTPSA id c4sm336426ejz.104.2020.06.01.11.50.36
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 01 Jun 2020 11:50:36 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id u26so600607wmn.1
 for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2020 11:50:36 -0700 (PDT)
X-Received: by 2002:a7b:c622:: with SMTP id p2mr581952wmk.55.1591037127078;
 Mon, 01 Jun 2020 11:45:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200529130405.929429-1-maxime.chevallier@bootlin.com>
In-Reply-To: <20200529130405.929429-1-maxime.chevallier@bootlin.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 1 Jun 2020 20:45:14 +0200
X-Gmail-Original-Message-ID: <CAAFQd5AVD+LhYZziqNUfga1sCp98MMu+ESgBMagS1n6++ae=pg@mail.gmail.com>
Message-ID: <CAAFQd5AVD+LhYZziqNUfga1sCp98MMu+ESgBMagS1n6++ae=pg@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] media: rockchip: Introduce driver for the camera
 interface on PX30
To: Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Helen Koike <helen.koike@collabora.com>, 
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_115039_363488_1B5B640E 
X-CRM114-Status: GOOD (  25.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Maxime,

On Fri, May 29, 2020 at 3:04 PM Maxime Chevallier
<maxime.chevallier@bootlin.com> wrote:
>
> Hello everyone,
>
> Here's a V2 of the series adding very basic support for the camera interface on
> the Rockchip PX30 SoC.
>
> Thanks to everyone that commented on the first series, your reviews were
> very helpful :)
>
> This Camera Interface is also supported on other Rockchip SoC such as
> the RK1808, RK3128, RK3288 and RK3288, but for now I've only been able to
> test it on the PX30, using a PAL format.

How does this hardware relate to the one handled by the rkisp1 driver
that is available under staging/media/rkisp1? It was written with
RK3399 in mind, but I have a loose recollection that the hardware in
RK3288 was roughly the same.

+Helen Koike +Dafna Hirschfeld working on the rkisp1 driver.

Best regards,
Tomasz

>
> This driver is mostly based on the driver found in Rockchip's BSP, that
> has been trimmed down to support the set of features that I was able to test,
> that is pretty much a very basic one-frame capture and video streaming
> with GStreamer.
>
> This first draft only supports the Parallel interface, although the
> controller has support for BT656 and CSI2.
>
> Finally, this controller has an iommu that could be used in this driver,
> but as of today I've not been able to get it to work.
>
> Any review is welcome.
>
> Thanks,
>
> Maxime
>
> --- Changes since V1 ---
>
>  - Took reviews from Rob, Hans, Robin and Heiko into account :
>   - Renamed the clocks in the binding
>   - Fixed the DT schema compiling
>   - Fixed a few typos
>   - Used the clk bulk API
>   - Used the reset array API
>   - Changed a few helpers for more suitable ones
>   - Rebased on 5.7-rc7
>
>
>
> Maxime Chevallier (3):
>   media: dt-bindings: media: Document Rockchip CIF bindings
>   media: rockchip: Introduce driver for Rockhip's camera interface
>   arm64: dts: rockchip: Add the camera interface description of the PX30
>
>  .../bindings/media/rockchip-cif.yaml          |  100 ++
>  arch/arm64/boot/dts/rockchip/px30.dtsi        |   12 +
>  drivers/media/platform/Kconfig                |   13 +
>  drivers/media/platform/Makefile               |    1 +
>  drivers/media/platform/rockchip/cif/Makefile  |    3 +
>  drivers/media/platform/rockchip/cif/capture.c | 1170 +++++++++++++++++
>  drivers/media/platform/rockchip/cif/dev.c     |  358 +++++
>  drivers/media/platform/rockchip/cif/dev.h     |  213 +++
>  drivers/media/platform/rockchip/cif/regs.h    |  256 ++++
>  9 files changed, 2126 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip-cif.yaml
>  create mode 100644 drivers/media/platform/rockchip/cif/Makefile
>  create mode 100644 drivers/media/platform/rockchip/cif/capture.c
>  create mode 100644 drivers/media/platform/rockchip/cif/dev.c
>  create mode 100644 drivers/media/platform/rockchip/cif/dev.h
>  create mode 100644 drivers/media/platform/rockchip/cif/regs.h
>
> --
> 2.25.4
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

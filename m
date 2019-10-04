Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3827CB452
	for <lists+linux-rockchip@lfdr.de>; Fri,  4 Oct 2019 08:07:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PokLw/WkbTNuXr+oKwcwZU1L9h88hypTcs4BiA+Kr9Q=; b=qw3ekXZQRLoIJp
	qIEr9dtYEHaB65JBCTWeOxVG9ElMQqfgKFzr38oywBUYy6o7Wnay+ElTuEf+QTuPng/ZdQKbL3COG
	zfC3+gWR+KYqSBnV5GaRiKxo89ofN/RChE6EQv7O3AXKNfWPzPhMUTrCQq1w5GLD54gqftCWw2AlZ
	dSQNJc36cyEPsctRTOP+Lzfh1GDvfHX0LoIMwoMJpAv7WzQooCneB5a1fjERou/Zi9CtX5Xa53Cri
	efCQ+45YphJIx3plvfa1UTr90R/F+7qBtmR4U7kpZx77SW1utKqGNnZ8KIRjLseJeOGCmvTH61jSC
	kMEy9aFrzqaYX8PrvMUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGGkZ-0000a2-2o; Fri, 04 Oct 2019 06:07:35 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGGkV-0000ZM-B2
 for linux-rockchip@lists.infradead.org; Fri, 04 Oct 2019 06:07:33 +0000
Received: by mail-ed1-x543.google.com with SMTP id r9so4730564edl.10
 for <linux-rockchip@lists.infradead.org>; Thu, 03 Oct 2019 23:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rq6DO8bL2JAeSfoJ3DZboj9jM1fNvjsqTcp7VF7+FUY=;
 b=dBNkUYtxZDTR177velDgXD3e5mQdb08i0MF2tfF6Dug1dTDirf/a1ezBB0XdAWfoUS
 FxWpYVdpJA5cYxi0XeoATW0eLF8Qhlnv8t+wG7mA+XlGJDZMX84dd8hizJTd6TslshJE
 k9VB+WQFJNFWpHG7GOr/govPhLNrubPknmmTc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rq6DO8bL2JAeSfoJ3DZboj9jM1fNvjsqTcp7VF7+FUY=;
 b=CBsaSxQpROvAFp4NFfCxrQeXzIcRGr0opSltBnfNAfBVp5o8g+p8tk5HwyxAi+CPzj
 MVQu7H+cazZB0Eump5hXDFOxEZltEvZgeulBu5h5TueFcmwl5Wdi1nkuawxmjWoiMDJt
 D3rTeKs18EwbKj0wN+uNmpT6epxhBd3L7/jGeDbdrsF/igBWlOL65s9oJf+bMG5x2Sys
 RxSOAXqAATPr8zs2Psv4OY5cU+Jwx/WamGxFcvgGVlBfQxUdh9sC+D34DoyGcI/hxrbb
 UaK4pv9qLM5nqGiCnXtbVbigjr/4FwpRIpbsQ6mWcpHn+3g1Z6FV9aBsnJOpMieGJ+s5
 781w==
X-Gm-Message-State: APjAAAUtsPJOF/0P5RQONoVJRWon+Z03WQ6CEV/SZ3w6+SNsY5yFyll8
 Ebb4bq2Ymxmub1XQvXW5VQdmhgk140JNHQ==
X-Google-Smtp-Source: APXvYqw9NWSFNSGKBuyTNrZNVo/b8e1ZWprrr/3bxokVYXLIcGU1MEtkzvcr+uQCeRDqC7R/ZmM1Sw==
X-Received: by 2002:aa7:d883:: with SMTP id u3mr13271973edq.281.1570169247284; 
 Thu, 03 Oct 2019 23:07:27 -0700 (PDT)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com.
 [209.85.221.43])
 by smtp.gmail.com with ESMTPSA id p4sm903311eda.56.2019.10.03.23.07.26
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Oct 2019 23:07:26 -0700 (PDT)
Received: by mail-wr1-f43.google.com with SMTP id j18so4709901wrq.10
 for <linux-rockchip@lists.infradead.org>; Thu, 03 Oct 2019 23:07:26 -0700 (PDT)
X-Received: by 2002:adf:dc41:: with SMTP id m1mr9597504wrj.46.1570169245986;
 Thu, 03 Oct 2019 23:07:25 -0700 (PDT)
MIME-Version: 1.0
References: <20191003190833.29046-1-ezequiel@collabora.com>
In-Reply-To: <20191003190833.29046-1-ezequiel@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 4 Oct 2019 15:07:14 +0900
X-Gmail-Original-Message-ID: <CAAFQd5BgwDrc5Jy+EAnC91184aGJiuSkg2jMqOnAEHHfReoLgw@mail.gmail.com>
Message-ID: <CAAFQd5BgwDrc5Jy+EAnC91184aGJiuSkg2jMqOnAEHHfReoLgw@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] Enable Hantro G1 post-processor
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_230731_402246_44AF22F1 
X-CRM114-Status: GOOD (  21.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Chris Healy <cphealy@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Ezequiel,

On Fri, Oct 4, 2019 at 4:09 AM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> Hi all,
>
> The Hantro G1 VPU post-processor block can be pipelined with
> the decoder hardware, allowing to perform operations such as
> color conversion, scaling, rotation, cropping, among others.
>
> When the post-processor is enabled, the decoder hardware
> gets its own set of NV12 buffers (the native decoder format),
> and the post-processor is the owner of the CAPTURE buffers.
>
> This allows the application get processed
> (scaled, converted, etc) buffers, completely transparently.
>
> This feature is implemented by exposing the post-processed pixel
> formats on ENUM_FMT. When the application sets a pixel format
> other than NV12, and if the post-processor is MC-linked,
> the driver will make use of it, transparently.
>
> On this v2, the media controller API is now required
> to "enable" (aka link, in topology jargon) the post-processor.
> Therefore, applications now have to explicitly request this feature.
>
> For instance, the post-processor is enabled using the media-ctl
> tool:
>
> media-ctl -l "'decoder':1 -> 'rockchip,rk3288-vpu-dec':0[0]"
> media-ctl -l "'postproc':1 -> 'rockchip,rk3288-vpu-dec':0[1]"
>
> v4l2-ctl -d 1 --list-formats
> ioctl: VIDIOC_ENUM_FMT
>         Type: Video Capture Multiplanar
>
>         [0]: 'NV12' (Y/CbCr 4:2:0)
>         [1]: 'YUYV' (YUYV 4:2:2)
>
> Patches 1 and 2 are simply cleanups needed to easier integrate the
> post-processor. Patch 2 is a bit invasive, but it's a step
> forward towards merging the implementation for RK3399 and RK3288.
>
> Patch 3 re-works the media-topology, making the decoder
> a v4l2_subdevice, instead of a bare entity. This allows
> to introduce a more accurate of the decoder+post-processor complex.
>
> Patch 4 introduces the post-processing support.
>
> This is tested on RK3288 platforms with MPEG-2, VP8 and
> H264 streams, decoding to YUY2 surfaces. For now, this series
> is only adding support for NV12-to-YUY2 conversion.
>
> The design and implementation is quite different from v1:
>
> * The decoder->post-processor topology is now exposed
>   explicitly and applications need to configure the pipeline.
>   By default, the decoder is enabled and the post-processor
>   is disabled.
>

First of all, thanks for working on this. While from Chromium point of
view there isn't any practical use case for this feature, it could
possibly be valuable for some other platforms.

I still see a problem with the current design. Mem-to-mem decoders are
commonly used in a multi-instance fashion, but media topology is
global. That means that when having two applications on the system
decoding their own videos, one might be stepping on the other by
changing the topology.

I believe that if we want this to be really usable, we would need to
make the media topology per instance, but that's a significant change
to the media subsystem. Maybe we could pursue the other options I
suggested in the previous revision instead, like ordering the formats
returned by enum_fmt by native first and adding format flags that
would tell the userspace that the format can have some performance
and/or power penalty?

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C7FF6032
	for <lists+linux-rockchip@lfdr.de>; Sat,  9 Nov 2019 17:02:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KXPk4loD7ggZxEOz8SYlbW4Zez8v26oBOtstB6HGIRM=; b=WHU7iOiyFeMwlU
	wyAZ6SC3qLK5gW6cU9dfTga3QCJYRMIkTX8sI6zL/pBoejKE1PmZv7phfMwtMBqk9GwhWSAfqPrTz
	93hcANFEqrQGXbNlV/44dmb8bBC7QZZepQPqZUhi/7L/Z29w35vx1cASWkKkXcqrH9Vh/aAft3ntP
	CBuSCt6rotXH7gKH9eU9XtNbFPXuOWAKjqgXO6o63cpH5uecFiNcaKiJIV7nqDH/MENsaywP1vZca
	+NF7gcFZbZ/EOB57ejt0f4KLlVyDLjmeRzRd87cC/oMa5vhd2LrBwksIVbsJHTc3xW2eAGBaIiOS+
	cNMACuWL7LshIR/oseEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTTCF-0006Fq-9t; Sat, 09 Nov 2019 16:02:43 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTTCB-0006F5-Kh
 for linux-rockchip@lists.infradead.org; Sat, 09 Nov 2019 16:02:41 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 7FBF0290C12
Message-ID: <11fc6150a28f4617752c1c853521941087cc3f01.camel@collabora.com>
Subject: Re: [PATCH v2 0/4] Enable Hantro G1 post-processor
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Tomasz Figa <tfiga@chromium.org>
Date: Sat, 09 Nov 2019 13:02:29 -0300
In-Reply-To: <0b12f376-385b-0f68-abe1-1a0a21bb5a48@xs4all.nl>
References: <20191003190833.29046-1-ezequiel@collabora.com>
 <CAAFQd5BgwDrc5Jy+EAnC91184aGJiuSkg2jMqOnAEHHfReoLgw@mail.gmail.com>
 <0b12f376-385b-0f68-abe1-1a0a21bb5a48@xs4all.nl>
Organization: Collabora
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_080239_948018_0BBB61DC 
X-CRM114-Status: GOOD (  28.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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

On Sat, 2019-11-09 at 11:40 +0100, Hans Verkuil wrote:
> On 10/4/19 8:07 AM, Tomasz Figa wrote:
> > Hi Ezequiel,
> > 
> > On Fri, Oct 4, 2019 at 4:09 AM Ezequiel Garcia <ezequiel@collabora.com> wrote:
> > > Hi all,
> > > 
> > > The Hantro G1 VPU post-processor block can be pipelined with
> > > the decoder hardware, allowing to perform operations such as
> > > color conversion, scaling, rotation, cropping, among others.
> > > 
> > > When the post-processor is enabled, the decoder hardware
> > > gets its own set of NV12 buffers (the native decoder format),
> > > and the post-processor is the owner of the CAPTURE buffers.
> > > 
> > > This allows the application get processed
> > > (scaled, converted, etc) buffers, completely transparently.
> > > 
> > > This feature is implemented by exposing the post-processed pixel
> > > formats on ENUM_FMT. When the application sets a pixel format
> > > other than NV12, and if the post-processor is MC-linked,
> > > the driver will make use of it, transparently.
> > > 
> > > On this v2, the media controller API is now required
> > > to "enable" (aka link, in topology jargon) the post-processor.
> > > Therefore, applications now have to explicitly request this feature.
> > > 
> > > For instance, the post-processor is enabled using the media-ctl
> > > tool:
> > > 
> > > media-ctl -l "'decoder':1 -> 'rockchip,rk3288-vpu-dec':0[0]"
> > > media-ctl -l "'postproc':1 -> 'rockchip,rk3288-vpu-dec':0[1]"
> > > 
> > > v4l2-ctl -d 1 --list-formats
> > > ioctl: VIDIOC_ENUM_FMT
> > >         Type: Video Capture Multiplanar
> > > 
> > >         [0]: 'NV12' (Y/CbCr 4:2:0)
> > >         [1]: 'YUYV' (YUYV 4:2:2)
> > > 
> > > Patches 1 and 2 are simply cleanups needed to easier integrate the
> > > post-processor. Patch 2 is a bit invasive, but it's a step
> > > forward towards merging the implementation for RK3399 and RK3288.
> > > 
> > > Patch 3 re-works the media-topology, making the decoder
> > > a v4l2_subdevice, instead of a bare entity. This allows
> > > to introduce a more accurate of the decoder+post-processor complex.
> > > 
> > > Patch 4 introduces the post-processing support.
> > > 
> > > This is tested on RK3288 platforms with MPEG-2, VP8 and
> > > H264 streams, decoding to YUY2 surfaces. For now, this series
> > > is only adding support for NV12-to-YUY2 conversion.
> > > 
> > > The design and implementation is quite different from v1:
> > > 
> > > * The decoder->post-processor topology is now exposed
> > >   explicitly and applications need to configure the pipeline.
> > >   By default, the decoder is enabled and the post-processor
> > >   is disabled.
> > > 
> > 
> > First of all, thanks for working on this. While from Chromium point of
> > view there isn't any practical use case for this feature, it could
> > possibly be valuable for some other platforms.
> > 
> > I still see a problem with the current design. Mem-to-mem decoders are
> > commonly used in a multi-instance fashion, but media topology is
> > global. That means that when having two applications on the system
> > decoding their own videos, one might be stepping on the other by
> > changing the topology.
> > 
> > I believe that if we want this to be really usable, we would need to
> > make the media topology per instance, but that's a significant change
> > to the media subsystem. Maybe we could pursue the other options I
> > suggested in the previous revision instead, like ordering the formats
> > returned by enum_fmt by native first and adding format flags that
> > would tell the userspace that the format can have some performance
> > and/or power penalty?
> 
> I discussed this with Ezequiel in Lyon, and my preference is also to
> not rely on the media controller, but instead order the formats with
> the native formats first, followed by the formats that need this additional
> processing step. A format flag can be added, but I feel that it is better
> to wait with that until it is clear that there is a real need for it.
> 
> It would be good to document in the ENUM_FMT ioctl that formats that
> require additional processing are at the end of the format list.
> 
> Ezequiel, I'm marking this series as "Changes Requested" in patchwork.
> 

Thanks! I should revisit this and post a new series soon.

Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CF7A56F5
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Sep 2019 15:02:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H6WiMsNXTHqKparduP+HNPaFQH/ehn4y7Ihnpspt0uU=; b=H/7bAkQRjSAox3
	rO+eDYR/IG0TsKS8CIP1EX19rNhUQLGAXPf9TtQ4/t/ALL8Ses0DmR1+JEP2PugrNILOZEBwLMKQy
	YeeQv8dgLZ3roxEqiBcVzgbCi0vZEvFx7m87PYbkhDK0P8qaGGZ57lckTPBNQrQK+3h5/I4f1mwHC
	Md7Th5wIsICaJrHD6K/wZiaAVnmUYegOZRfbcdikrON/B8RYGnQlu+F+HHXhV+jR38Pec07IxO8sR
	rg7WpR5uXzHXAL7Au7JIO8ZCzzJ2hy5vG/s9nEVI3kB9ovk0eg2IBcb3e9j3xAZzGsssNGDGJVm3j
	i5R0EySB/BDfW+mua6oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4lyf-000057-GF; Mon, 02 Sep 2019 13:02:37 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4lya-0008Vn-70
 for linux-rockchip@lists.infradead.org; Mon, 02 Sep 2019 13:02:35 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id ADB4628CB08
Message-ID: <f204a408f980f3ae0cfb859acdc765cdc1c0ff01.camel@collabora.com>
Subject: Re: [PATCH RFC 00/12] media: hantro: H264 fixes and improvements
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>
Date: Mon, 02 Sep 2019 10:02:14 -0300
In-Reply-To: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_060234_112383_0F227ACB 
X-CRM114-Status: GOOD (  12.56  )
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jonas,

Thanks for the series, I'll be reviewing this shortly.

On Sun, 2019-09-01 at 12:42 +0000, Jonas Karlman wrote:
> This series contains fixes and improvements for the hantro H264 decoder.
> 
> Patch 1-6 fixes issues and limitations observed when preparing support
> for field encoded content.
> 
> Patch 7 introduce new DPB entry flags that is used to signal how a reference
> frame is referenced. This information is needed to correctly build a
> reference list for field encoded content.
> 
> Patch 8 adds bits to handle field encoded content, this is a rough patch
> and should be reworked with proper code style and formatting.
> Please get back with feedback on how to improve this.
> 
> The following samples from [1] are now playable with patch 1-8
> - H264_1080i-25-interlace_Kaesescheibchen.mkv
> - H264_10_1080i_50_AC3-Astra19.2_ProSieben_HD.ts
> - big_buck_bunny_1080p_H264_AAC_25fps_7200K.mp4
> - h264_tivo_sample.ts
> 
> The rest of the patches refactors G1 H264 code to more closely match
> the code generated by my rockchip-vpu-regtool at [2] and then adds
> support for H264 decoding on RK3399/RK3328 using the VPU2 block.
> This code is early work and needs proper code style and formatting,
> I just wanted to share the early work and get some initial feedback.
> 
> This series has been tested using ffmpeg v4l2 request hwaccel at [3] [4]
> 

What boards have you tested this on?

Thanks,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 134DF165926
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Feb 2020 09:24:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9D1CfskHmLFriwSzCZyai3J1tMQvnXTwDp0vVWNlKnY=; b=LsRmgWCyUUA0m4
	JBpnDyp+XTCcNkmaPiUVodiQDa/ewVyy6+x5KAT7G7WgiX2RTSqGbWFIo3Qtlq585JpfZWIzlORmW
	NV+ds2geVp62BNVjM38KrdM0r4qJUe5QzFYUcOsDOGCP2feE0l7HMCdQtk4q3NeP+wEpKGRSIABy4
	nmNVxLMVctUOW8oSEcS7d+bqhyCbYERI651rJvrU7GbiG4epK1uop0iKduNsX57V9McOi4C6bY3aG
	6hKz/1DK2Be4wOmh5Mi25dZkk3YHnBZgDcnpsVi6wPt0kZJx0P87QOd88hgy5YNSpVYBquzj8I9/+
	UOdlXpRZKIjelowgFsmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4h8d-00033s-Mr; Thu, 20 Feb 2020 08:24:51 +0000
Received: from lb2-smtp-cloud9.xs4all.net ([194.109.24.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4h8Z-0002vG-HH
 for linux-rockchip@lists.infradead.org; Thu, 20 Feb 2020 08:24:49 +0000
Received: from [192.168.2.10] ([46.9.235.248])
 by smtp-cloud9.xs4all.net with ESMTPA
 id 4h8Gj9V8XyIme4h8JjiULX; Thu, 20 Feb 2020 09:24:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1582187080; bh=zjCtsEIa08AGTyanHrsqF+rTfgRcOyOrIkiDIW9QfEQ=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=e5zQOyPw3QKs6KKOXVTapY7zvgPVaf4D1dmdNZhCpta6p9SVSXCqve5sn6z7mKif1
 pb1AKVPkcwb4fHktMChS912Q+f4Vc3HYjoSFOUvEi7LeMcO/tnyA62EH99DFJJ+8my
 bn3gTZk50O6lUT0Y6g6z0js3zzpDfERWGx4T2RJh/0v4AM01zd1Y7HR/ClEm4GKqqY
 480FGhbOQIqCvF7AracdWIDQdLIxuejwv+DUezEiY/Va4oVC3ozHV24sRgbpq/OZkN
 Eg4FJJoHNOsRzCDF6dTsFRm3WI4WGZpH+rZTsBEqSEtmuo2CCD+WybfrufQy1uK6sX
 weAIEC8bT8uPw==
Subject: Re: [PATCH v5 0/6] media: rockchip: Add the rkvdec driver
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20200219173750.26453-1-ezequiel@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <de59d088-ec08-c851-77f2-545053ca0cbb@xs4all.nl>
Date: Thu, 20 Feb 2020 09:24:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200219173750.26453-1-ezequiel@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfOyDD88T/3EMGCMjiQ/rzRGQ0jdIDCkWv1DdNKCpVI/4w5Cr6yo3Q06FVkJqXBj2A/AF8uNxU5N0ohwJP8ItCv7gMCAjZil9+L0i2TT/KIHkh6/LVTnF
 XuL4xyx0NyXmDJylYEagN76KqPIEX9fTqodrzPMm1aDY/cwtPw/ldGqJzhrN4AQywVZKOZS2h462t4NXwi8xtklkeZT8Au8Faeb+icbz88qGjHmppbgpegKM
 AekfK1/jSC+XrZiujG4aNcLxvSAWZqq29ysQT6UdV5bFz98We17THzekZ7D+VVPEf5mNt3rv5MU3D2YifcYsW1dTBEKEOxbRwPrv9zAr7RjCXbLl8+swBJy/
 YrCDEX81s+Ab26YRSSyoXXLq1X5rI2mRdS9J2L1djmkG7PX45PbCJOEPQmmezJ3FpB0xjoLhpYlPooEJVXrAz1G83arO8kyYPcLJ+M0llUrM1ceqpJZn7WKt
 Rwa8KWRZkl2MGivkPKkuX4nzA+M9DrmIvH2T8ylv8Q6AQkEHQa+yyY6W+4EpjKmA9SmGqptLhTuFftjjp4Upuc9N2YrkoXGJoarMjaEY4mvRlt/eDWlJp8FG
 gZTyHGPR3azbocsENwKFaMzbhdU/CpT2PDHW4UWLddsNyHAl5TBRTyvL7PvLvMql52RoFDH7JP0fRTsaMriakvN5mH4EqRLPTxK0RuEV3EZMlA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_002447_732411_97AE531F 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.26 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2/19/20 6:37 PM, Ezequiel Garcia wrote:
> Hello,
> 
> This is v5 of Boris' rkvdec driver.
> 
> This version corrects wrong copyright notices and then adds
> a TODO file for the staging driver. The only reason to keep the
> driver in staging are the staging uAPI controls.

Can you post a follow-up patch that updates the MAINTAINERS file?
That's missing in this series.

Thanks!

	Hans

> 
> Thanks,
> Ezequiel
> 
> Boris Brezillon (5):
>   media: v4l2-core: Add helpers to build the H264 P/B0/B1 reflists
>   media: hantro: h264: Use the generic H264 reflist builder
>   media: dt-bindings: rockchip: Document RK3399 Video Decoder bindings
>   media: rkvdec: Add the rkvdec driver
>   arm64: dts: rockchip: rk3399: Define the rockchip Video Decoder node
> 
> Jonas Karlman (1):
>   media: uapi: h264: Add DPB entry field reference flags
> 
>  .../bindings/media/rockchip,vdec.yaml         |   71 +
>  .../media/uapi/v4l/ext-ctrls-codec.rst        |   16 +
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi      |   14 +-
>  drivers/media/v4l2-core/Kconfig               |    4 +
>  drivers/media/v4l2-core/Makefile              |    1 +
>  drivers/media/v4l2-core/v4l2-h264.c           |  258 ++++
>  drivers/staging/media/Kconfig                 |    2 +
>  drivers/staging/media/Makefile                |    1 +
>  drivers/staging/media/hantro/Kconfig          |    1 +
>  drivers/staging/media/hantro/hantro_h264.c    |  237 +---
>  drivers/staging/media/rkvdec/Kconfig          |   15 +
>  drivers/staging/media/rkvdec/Makefile         |    3 +
>  drivers/staging/media/rkvdec/TODO             |   11 +
>  drivers/staging/media/rkvdec/rkvdec-h264.c    | 1154 +++++++++++++++++
>  drivers/staging/media/rkvdec/rkvdec-regs.h    |  223 ++++
>  drivers/staging/media/rkvdec/rkvdec.c         | 1134 ++++++++++++++++
>  drivers/staging/media/rkvdec/rkvdec.h         |  123 ++
>  include/media/h264-ctrls.h                    |    2 +
>  include/media/v4l2-h264.h                     |   86 ++
>  19 files changed, 3126 insertions(+), 230 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip,vdec.yaml
>  create mode 100644 drivers/media/v4l2-core/v4l2-h264.c
>  create mode 100644 drivers/staging/media/rkvdec/Kconfig
>  create mode 100644 drivers/staging/media/rkvdec/Makefile
>  create mode 100644 drivers/staging/media/rkvdec/TODO
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec-h264.c
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec-regs.h
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec.c
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec.h
>  create mode 100644 include/media/v4l2-h264.h
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

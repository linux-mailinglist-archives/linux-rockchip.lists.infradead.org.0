Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 923421CA970
	for <lists+linux-rockchip@lfdr.de>; Fri,  8 May 2020 13:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ZAsD7bXnhs+k4IQtioYp4xm+6rbVHrVbakv5SKD+OY=; b=qR8DACgPj38i2X
	YhVMHK4KtTw5ReuYDM70RBYBTUVhgyUD/A+c2qqMb3BV39ZouHhSBjgRJh3Pw6zLr7/1O94tc83pk
	9MtI69hrhQDWiV9RM8aP2/R5ldfDX8cOnA2DpVpAzXFwKkGE1E15p5wJGKPR9XI6hTtur2FC2u829
	dnxsJC5OoHLSVkIO1TzCetXjYxf/HOlYxgIuPwGiofqoiWhW2YInzRKrWVvOhi+76QEcbiXAuGRwg
	LLqw1rKVrCs8OlIGQYW5JuCSOUYLmn4aOs61cVLOOsk8dHHO07UcAHL+omcvTR9WKjEHP5iFLx/SC
	mP7wqBW0OI85Q2a+zJ9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX14J-000640-3i; Fri, 08 May 2020 11:21:27 +0000
Received: from o1.b.az.sendgrid.net ([208.117.55.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX14F-00063U-EF
 for linux-rockchip@lists.infradead.org; Fri, 08 May 2020 11:21:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=subject:references:from:mime-version:in-reply-to:to:cc:content-type:
 content-transfer-encoding;
 s=001; bh=PWK4XLf8uT47fjT53Iwr1F6YaT+HIpbOZWH2ruYq3Bk=;
 b=LvV+RynM2vXcBlzqjJlEN+mcoAEMTEqWYGG4uE8+80MxEtI1MdccK9AFCxTz0wFT5eMl
 j0gs5M6LAOBz7EBOorWqQdvKjNb48SptAokbJslf9+FuVBd5JB3Fqkj5hteD++DRYcpEu3
 c0tdVAUKcz/hRD9tayPl21ARKn4BHjpOw=
Received: by filterdrecv-p1iad2-asgard1-688d55b576-8lwk5 with SMTP id
 filterdrecv-p1iad2-asgard1-688d55b576-8lwk5-17-5EB540A4-41
 2020-05-08 11:21:08.626344087 +0000 UTC m=+322689.304433033
Received: from [192.168.1.14] (unknown)
 by ismtpd0002p1lon1.sendgrid.net (SG) with ESMTP
 id nviAOGnKRJCcgVKaIBvmzQ Fri, 08 May 2020 11:21:08.286 +0000 (UTC)
Subject: Re: [PATCH v3 3/3] media: rkvdec: Add the VP9 backend
References: <20200505134110.3435-1-ezequiel@collabora.com>
 <20200505134110.3435-4-ezequiel@collabora.com>
From: Jonas Karlman <jonas@kwiboo.se>
Message-ID: <4ac628c6-0845-7bca-2c1a-4d6ef2a4019f@kwiboo.se>
Date: Fri, 08 May 2020 11:21:08 +0000 (UTC)
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200505134110.3435-4-ezequiel@collabora.com>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h=2FJngJCfOXTHYiA64?=
 =?us-ascii?Q?a6CEbDfl66SIIwIB00p85CVBgT4TGI6ZDzCtGbT?=
 =?us-ascii?Q?+PzqdSwTwd98bSU5cYCWbHrqdKeGhym4hz26ahE?=
 =?us-ascii?Q?qwZwR9qCjy+3NLxbs6gYfv3pPzxbk1d=2F7ShyWCk?=
 =?us-ascii?Q?e5DP3n2bYKhSWYgOLogIK+U07hyVy2X+ugCFtbf?=
 =?us-ascii?Q?BLOgHKoJp2=2FuD5dmsOOZAW0YV+Wqb9D6teeP1wK?=
 =?us-ascii?Q?NGk=3D?=
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: sv
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_042123_708962_2AE83D4C 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [208.117.55.133 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [208.117.55.133 listed in wl.mailspike.net]
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
Cc: Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Tomasz Figa <tfiga@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 gustavo.padovan@collabora.com, Boris Brezillon <boris.brezillon@collabora.com>,
 Jeffrey Kardatzke <jkardatzke@chromium.org>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2020-05-05 15:41, Ezequiel Garcia wrote:
> From: Boris Brezillon <boris.brezillon@collabora.com>
> 
> The Rockchip VDEC supports VP9 profile 0 up to 4096x2304@30fps. Add
> a backend for this new format.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>

I have tested this series on a Rock Pi 4 RK3399 device using
the ffmpeg vp9 request api hwaccel at [1].
Decoding up to 3840x2160@30fps media is working great.
(frame scaling was not tested or fully implemented in ffmpeg hwaccel)

Tested-by: Jonas Karlman <jonas@kwiboo.se>

[1] https://github.com/Kwiboo/FFmpeg/commits/v4l2-request-hwaccel-4.2.2

Regards,
Jonas

> ---
>  drivers/staging/media/rkvdec/Makefile     |    2 +-
>  drivers/staging/media/rkvdec/rkvdec-vp9.c | 1577 +++++++++++++++++++++
>  drivers/staging/media/rkvdec/rkvdec.c     |   56 +-
>  drivers/staging/media/rkvdec/rkvdec.h     |    6 +
>  4 files changed, 1637 insertions(+), 4 deletions(-)
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec-vp9.c
> 

[...]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

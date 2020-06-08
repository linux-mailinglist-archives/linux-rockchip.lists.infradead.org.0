Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F27B41F17DD
	for <lists+linux-rockchip@lfdr.de>; Mon,  8 Jun 2020 13:32:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPQ10RHV64Huv1UGNW/Er0eOs/ace72f76WcCENtIuY=; b=dJ9Bu5w0qI2SqU
	Gc4XQ5E11V9z89rpHbHeMECZ9HNteEJFAGJ8VB0tfX1Hy4W8k3Y/cZxLhtDwPk4lwlXEYnRVTEBRf
	y9Joj/udtPlxTRxCBjfxmz1j6dkYz1IDHSqXtkHlLGBG9dz+p3fVnC/F+vhGzcEwAInsbbDbnCzyz
	W13Y9wNcIlQitwjED+AfKQfS06VIUVGiEpTaA23JqQZVHQd5/OQPBX3/OR+Y8zB/QueawGyMaRILm
	58XyWogaqytS/08V5+29PHuMQCiLp89EHarvM18mji3R+k6CWXE3fnoazfFX/J+0Yhgk+O1iv0kab
	rOBX0jqM061bm4Mwd5vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiG0Q-0007MN-Ss; Mon, 08 Jun 2020 11:31:54 +0000
Received: from lb3-smtp-cloud9.xs4all.net ([194.109.24.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiG0N-0007Lx-D0
 for linux-rockchip@lists.infradead.org; Mon, 08 Jun 2020 11:31:53 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id iG0HjQdY4CKzeiG0Kjlusf; Mon, 08 Jun 2020 13:31:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1591615909; bh=Anz/P42LyFrZUpWS2NR5kigUEkgwjzKuHAFeL8LWRr0=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=SWhCfLDbzJ3YUsvxR7HG4IdRwUOE0jA8c/qlSmg4V6m4QNyPsjiyfiP4ldFOHpKK3
 I7T0pROhvZ54cTYa3kwfpQIuZSam170Kz8VN3yJeC5nX0cYcoXTtGo95HYxLFgDKvY
 KlFNEq44OJCmyARpHki7XPeej9zm3kT39WfPgobUpUK3/Q5HIDppfyCDQ1QACWZb/a
 VB9juB4YNqcPiWEKYuy7P7Bvgs+BnjxP/KBJLSzW2olp3Ga2kCfAWEzx9q759N+6UF
 rjASMJfP2UoFmZR5iCLPfSz1+xU7pYVLRCYfJrktm+uF7DMQQu0gMNcoeyTApu3tFa
 /1fD7z/HowMvg==
Subject: Re: [RFC v4 2/8] media: staging: rkisp1: rsz: set default format if
 the given format is not RKISP1_DIR_SRC
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
References: <20200605172625.19777-1-dafna.hirschfeld@collabora.com>
 <20200605172625.19777-3-dafna.hirschfeld@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <ae1d2389-a054-a6ae-e4b6-a447bb64c071@xs4all.nl>
Date: Mon, 8 Jun 2020 13:31:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200605172625.19777-3-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfHyBh+BQb4GKKQgR/jqOp83cWQgqcGQD5PeziMeomxJ2HIohRdAlHosoDX41LmgHncJHzdwgRJ6Sx+1c5TipTzg2sS0xNCRxyOasYd47qrBhbQrg+3VJ
 0gCYq3EcxPJXnFWvdGLJhwG/Vp4Dvj0dNhPe2l5Z1mrTyprA4IR7rbtnJtiQ99u+Trx3afvCUjL75anPCpYRmmt0QKPgUut663NFNc8DjzdH2NLX0hzaGFSX
 LhsAheR48Qkw9eZuYfNiRd6TEVJhBcEigw6pf0T4rVJgEkO3Z/oZMOj7KGprOhgiKVE2jDcgvKQp8nguJv9CZxIy116zfR+uf3AAKbLA15BKshjLWw/hrki7
 em1l17g4L9LgCl2lifVMjksrI1IJes4nAdHzm3ziho+0qfM+EpoSnGX9ki3xzhdSKKRU95zo6GFxDYYV4gVkSkbelBe5vZ7vFqhvIhNOFISgBH/eTFAOqIX4
 9uZefcmkCHk/vtqnsadHiQbd/m74YD7ont5DdKvmquyHFBuMg5jzeMNCT2wBWFft06pyNyUKEQp8crAUxQdopEXH+IQJNVnc2mPlvZdF6FhVlQBIj/NwsdZC
 N3hJzQYOVsQqlKArue6i5xqHi2kW8xXTQyup8x7BtLI9yA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_043151_583292_16411EC2 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.30 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.30 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mchehab@kernel.org, p.zabel@pengutronix.de, dafna3@gmail.com,
 tfiga@chromium.org, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, sakari.ailus@linux.intel.com,
 skhan@linuxfoundation.org, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 05/06/2020 19:26, Dafna Hirschfeld wrote:
> When setting the sink format of the 'rkisp1_resizer'
> the format should be supported by 'rkisp1_isp' on
> the video source pad. This patch checks this condition
> and set the format to default if the condition is false.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-common.h  | 4 ++++
>  drivers/staging/media/rkisp1/rkisp1-isp.c     | 4 ----
>  drivers/staging/media/rkisp1/rkisp1-resizer.c | 2 +-
>  3 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> index 0c4fe503adc9..39d8e46d8d8a 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -22,6 +22,10 @@
>  #include "rkisp1-regs.h"
>  #include "uapi/rkisp1-config.h"
>  
> +#define RKISP1_DIR_SRC BIT(0)
> +#define RKISP1_DIR_SINK BIT(1)
> +#define RKISP1_DIR_SINK_SRC (RKISP1_DIR_SINK | RKISP1_DIR_SRC)
> +
>  #define RKISP1_ISP_MAX_WIDTH		4032
>  #define RKISP1_ISP_MAX_HEIGHT		3024
>  #define RKISP1_ISP_MIN_WIDTH		32
> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
> index dc2b59a0160a..e66e87d6ea8b 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> @@ -23,10 +23,6 @@
>  
>  #define RKISP1_ISP_DEV_NAME	RKISP1_DRIVER_NAME "_isp"
>  
> -#define RKISP1_DIR_SRC BIT(0)
> -#define RKISP1_DIR_SINK BIT(1)
> -#define RKISP1_DIR_SINK_SRC (RKISP1_DIR_SINK | RKISP1_DIR_SRC)

Helen had a comment about this in the original patch (https://patchwork.linuxtv.org/patch/64292/).

Can you process that comment for the v5 of this series?

Regards,

	Hans

> -
>  /*
>   * NOTE: MIPI controller and input MUX are also configured in this file.
>   * This is because ISP Subdev describes not only ISP submodule (input size,
> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> index d64c064bdb1d..fa28f4bd65c0 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> @@ -542,7 +542,7 @@ static void rkisp1_rsz_set_sink_fmt(struct rkisp1_resizer *rsz,
>  					    which);
>  	sink_fmt->code = format->code;
>  	mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
> -	if (!mbus_info) {
> +	if (!mbus_info || !(mbus_info->direction & RKISP1_DIR_SRC)) {
>  		sink_fmt->code = RKISP1_DEF_FMT;
>  		mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
>  	}
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

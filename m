Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85329182171
	for <lists+linux-rockchip@lfdr.de>; Wed, 11 Mar 2020 20:02:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VAUd3eNyhhM839CzZHorJhMVEXfCqUCEYmmqRORZbAI=; b=rWuKPqo21UA/wG
	IWTrJQZIFndnEQD02tg9r6Hdn822p4oHNMvYG6QyDfGRQ3+HwZKi8SuqvOC06TexIAGfJP/S17GfC
	GmMkkRNFM2SUl7NLzWKXpMlGG0NPfa8u57IOo8QjAe2/tOWiSRW68lyuEbJTeovfcRdXyhblUGMbH
	W72po2DHJfYiCu2CJoTf9IrFzIuWeOSdwrM7MmAYFpQnSIhJrYQ9+Q8APTFOFLtA5nbJ1j00ZHafW
	6iodakbsyMgN5hmq02Y+K13s5gVRWW80dzT5RqmGAJPuSKDBQ/nmCzr8Ncrzwf9EwowtY5nNizKl9
	buZpQFbct/gK5tGaSovQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC6c9-0006Km-8R; Wed, 11 Mar 2020 19:01:57 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC6c6-0006IX-PG
 for linux-rockchip@lists.infradead.org; Wed, 11 Mar 2020 19:01:56 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 8F772292194
Message-ID: <02c89cb555c10ae61a365a2f54eb72bc4aee3c78.camel@collabora.com>
Subject: Re: [PATCH 6/6] hantro: Refactor for V4L2 API spec compliancy
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Date: Wed, 11 Mar 2020 16:01:44 -0300
In-Reply-To: <20200311174300.19407-7-ezequiel@collabora.com>
References: <20200311174300.19407-1-ezequiel@collabora.com>
 <20200311174300.19407-7-ezequiel@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_120154_955280_73416410 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, Hans Verkuil <hverkuil@xs4all.nl>,
 Jeffrey Kardatzke <jkardatzke@chromium.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, 2020-03-11 at 14:43 -0300, Ezequiel Garcia wrote:
> Refactor how S_FMT and TRY_FMT are handled, and also make sure
> internal initial format and format reset are done properly.
> 
> The latter is achieved by making sure the same hantro_{set,try}_fmt
> helpers are called on all paths that set the format (which is
> part of the driver state).
> 
> This commit removes the following v4l2-compliance warnings:
> 
> test VIDIOC_G_FMT: OK
> 	fail: v4l2-test-formats.cpp(711): Video Capture Multiplanar: TRY_FMT(G_FMT) != G_FMT
> test VIDIOC_TRY_FMT: FAIL
> 	fail: v4l2-test-formats.cpp(1116): Video Capture Multiplanar: S_FMT(G_FMT) != G_FMT
> test VIDIOC_S_FMT: FAIL
> 
> Reported-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
[..]
> @@ -227,12 +232,12 @@ static int vidioc_g_fmt_cap_mplane(struct file *file, void *priv,
>  	return 0;
>  }
>  
> -static int vidioc_try_fmt(struct file *file, void *priv, struct v4l2_format *f,
> -			  bool capture)
> +static int hantro_try_fmt(const struct hantro_ctx *ctx,

Oops, it seems there's a warning due to ctx being const-qualified.

That should be fixed of course.

Regards,
Ezequiel



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

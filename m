Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A02511E337A
	for <lists+linux-rockchip@lfdr.de>; Wed, 27 May 2020 01:09:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xr4t0ySKHF67AGL80SlbKVlStMfw3TRI4vFwlwaZmXY=; b=RD905yGUERGAwC
	hV/8RsGXtcMTuiceJCKzkb+k31glGa+cEbas0HqbEvOuXBoTugt1mJqa6//kVYCXpJVl2ORCu85tI
	qMn5yLJc62dldmV+7AET4dmw0sbFPgN80SmL3Ic0BmY1KsFzk00DsHlr2RuxclHoNoy1MkVC6HY3l
	4F2m73JouDGvbbI8AQcfNttM5y2YCz/L/qkC9Ml9pDpi/iOthR6RN8Xr+mjCq0xpUTtxbdbBAQUgm
	+WHbf0ZcYRrSmHBqaGIBbWpAr3sA5WMPr1YZKR2+dDEvsS5UgWTCtp/BFXjC5GoY4qSXjXWMJuBA1
	2Ia/yiLhYT25R9hDwhOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdihJ-0007k4-US; Tue, 26 May 2020 23:09:25 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdihG-0007jN-W8
 for linux-rockchip@lists.infradead.org; Tue, 26 May 2020 23:09:24 +0000
Received: by mail-io1-xd42.google.com with SMTP id c8so3574168iob.6
 for <linux-rockchip@lists.infradead.org>; Tue, 26 May 2020 16:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cQ3ze+f5b/1ZwQbWOPMMZMeekvLgFjRb8bxIRjsaSd0=;
 b=kdbKxW0bvkN1ZI9nLoxn9sBacbu4KgJJ4FkkYn2QrKvlucVlYtdZ8H4ff6C6eTsE9Z
 MoWXyUvlH0S68teD/K+co02/k/X0AVerTO8ghOoQMxYCCrIY73R/ovJFRE05lJV3wfC0
 tAS5uBYzxc697Qdj+xYMJmeXw+7GV7Wv2p6KQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cQ3ze+f5b/1ZwQbWOPMMZMeekvLgFjRb8bxIRjsaSd0=;
 b=sWVtHLXO8YnoNDuQIncH7q3duaSQPuU/NnXZfZbU08eCCcyu0P6wV0gvnaWHI0CBRG
 ROfqUobQ+v8TDF7e9eT2btSBSxYuQnl+V45jUu+6FrWmBLdxyPNgHvieENN0UGT23LK5
 Kifwy2A5tuW1BRYtssPskS6tATorLxCP6j2XpYxVZlEwhUSFzmuIR+1vhvzMh/OMFGGD
 rdddeBLtJ5q4W3gHB0/0Udu8AAndqv6Y+TIW1eilTUYWaOJWPTtrhZKTvF1XGnOSwNhB
 GgvSoWXs2SPhM7lZ/MBOn/ONQmpTAhZuzx0nKZJtlNkqwEzOj68IKCNtdaUAUbX9a6S4
 YboQ==
X-Gm-Message-State: AOAM531EhIACGuY0xqTzhM1pcUtxoleUFI2g0KLnoswXXPkZVnSdWOLZ
 to7aiZeThzcLeHqpYY8ymEkAiLzQKLObAJbbmWO9rA==
X-Google-Smtp-Source: ABdhPJzVAtHQErZTvpJ1Saha2x31lQqV2ODlhL29AuDQeCObg4bco1zWako9f6YP6Z2U+CKCwPHPM9Sc7Kp7xNUOIsw=
X-Received: by 2002:a05:6602:2dca:: with SMTP id
 l10mr18865176iow.163.1590534560425; 
 Tue, 26 May 2020 16:09:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
 <20200515142952.20163-4-dafna.hirschfeld@collabora.com>
In-Reply-To: <20200515142952.20163-4-dafna.hirschfeld@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 27 May 2020 01:09:09 +0200
Message-ID: <CAHD77HkjjWMOcX3oLnzdMuzZM-_NSydStnzLLcHEFRenL23d-A@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] media: staging: rkisp1: rsz: set output format to
 YUV422 if cap format is YUV444
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_160923_029959_778039E4 
X-CRM114-Status: GOOD (  19.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 4:30 PM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:
>
> If the capture format is YUV444M then the memory input format
> should be YUV422, so the resizer should not change the default
> hdiv, vdiv in that case.
>
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-resizer.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> index 04a29af8cc92..5f9740ddd558 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> @@ -394,10 +394,11 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
>          * (4:2:2 -> 4:2:0 for example). So the width/height of the CbCr
>          * streams should be set according to the pixel format in the capture.
>          * The resizer always gets the input as YUV422. If the capture format
> -        * is RGB then the memory input (the resizer output) should be YUV422
> -        * so we use the hdiv, vdiv of the YUV422 info in this case.
> +        * is RGB or YUV444 then the memory input (the resizer output) should
> +        * be YUV422 so we use the hdiv, vdiv of the YUV422 info in this case.
>          */
> -       if (v4l2_is_format_yuv(cap->pix.info)) {
> +       if (v4l2_is_format_yuv(cap->pix.info) &&
> +           cap->pix.info->format != V4L2_PIX_FMT_YUV444M) {
>                 src_c.width = cap->pix.info->hdiv;
>                 src_c.height = cap->pix.info->vdiv;

As pointed out in another thread, this should have been the original
size divided by the divisor and not just the latter alone.

It seems a bit suspicious to me that we don't need to upscale the
chroma planes here, because it would mean that the MI itself would be
doing some horizontal pixel doubling. The hardware documentation
doesn't really explain this, though.

Have you been able to validate that the setting without upscaling
indeed produces correct output?

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

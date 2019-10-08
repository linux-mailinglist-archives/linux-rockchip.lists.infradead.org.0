Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9040CF222
	for <lists+linux-rockchip@lfdr.de>; Tue,  8 Oct 2019 07:28:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ftLhDADB9OxRmmz/BNo8CM3J3wq2l9fAlZEigFmIgR8=; b=aA1a1qiEoR7Vzk
	qBBYC888zW35xSKVvJftrEMsvAxUYF7s6jkyyUTXMakirGIFwTQE0SnOMcO/W2PEaWvHrWDzMHF0p
	gSn+MxRKh6RSgbZmpFgeIfe/dvUXlb6r5rV1xkiDZSnrseok+hTjGjUoW9/aErsSdszz+DUrKVTx5
	2q8n+KXyPs8lXRXv8AKAtKmDHu7xb52umXeHExoQjaE9lZBOxfaxGY69xo0Y3XQGjJgs38sm+UaDr
	+8ZjAw92h8HAvi5fC5ZHnwT+Z18AlPNZigiZcokwdah0jfOqNqHs7wtTgDuUY7bwTCx6FHRQhYSZG
	XkyaH92XXDi58ujueTYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHi2d-0001RE-Uq; Tue, 08 Oct 2019 05:28:11 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHi2b-0001Ql-3g
 for linux-rockchip@lists.infradead.org; Tue, 08 Oct 2019 05:28:10 +0000
Received: by mail-ed1-x541.google.com with SMTP id t3so14446301edw.13
 for <linux-rockchip@lists.infradead.org>; Mon, 07 Oct 2019 22:28:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LapW5Mhx7A3MmJCZg7TvfQvSI/HGXIWjFByANU41b0g=;
 b=jOsITpV2dARCbBIs7CsRBuTlQkh4OLvDnEPLViJ3atMG3HrLQzr9VvEXUm72O02aKV
 Rv0PMe/QG4clTSibMQU5hNpxlbZFdvv7hvq1WAkaQEzRMe9jt+7UPHjqLGwt3KaMRIID
 CubosTQVW1ATclgVCb0CpfjWguky4G6AUmceM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LapW5Mhx7A3MmJCZg7TvfQvSI/HGXIWjFByANU41b0g=;
 b=gv0c66rG+Rfh3hgJ6PCGzQd94vZdnPlFDLpBrnETUTK/oK61r06VhEAXBd7fnFM7gh
 kbqoxlkQ3SclScCHfqORsjUrO/P2Ut8obOnJHiyWSCg+NQAO9DArSYewxMGzjKWsZP8a
 NoMSZ89DQG7Nyf9y+zO10sueqVtU7vPxfh+MewHGcwrl98nbQq/k4Etqyt5jHKG0Y404
 iTH6Sme/qfMTZVaLmer/l1x/cYgX6j/LgfJW8Hez0y21ILcJwQFh/tzTV7gXM6XgKh0X
 nK3rVJ+zLVkXaUHpZKSELNI3UuCVL7fp+aL0SpjXsxv6iyEblP08FuCsBi/XwPy/+u/u
 NvCw==
X-Gm-Message-State: APjAAAUIKShhbX0Zk2MMRjjd38SzqiZwJSGsxrEhVHR4HKUMJFAk+dSo
 ROdyWRdMK6+VXOC7Ik713U/d/Lb0J6lfPg==
X-Google-Smtp-Source: APXvYqz4xEuOi6pQzfc+MDbL7OTF2Nxdlv0vknnIMnt3kmI7WyFzDJeHSOPWpu49RSMj/VFAIIMUuw==
X-Received: by 2002:a05:6402:13cd:: with SMTP id
 a13mr31668243edx.6.1570512486380; 
 Mon, 07 Oct 2019 22:28:06 -0700 (PDT)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com.
 [209.85.128.52])
 by smtp.gmail.com with ESMTPSA id q33sm3750839eda.60.2019.10.07.22.28.04
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Oct 2019 22:28:05 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id 7so1645308wme.1
 for <linux-rockchip@lists.infradead.org>; Mon, 07 Oct 2019 22:28:04 -0700 (PDT)
X-Received: by 2002:a1c:e404:: with SMTP id b4mr2327776wmh.90.1570512484241;
 Mon, 07 Oct 2019 22:28:04 -0700 (PDT)
MIME-Version: 1.0
References: <20191007174505.10681-1-ezequiel@collabora.com>
 <20191007174505.10681-3-ezequiel@collabora.com>
In-Reply-To: <20191007174505.10681-3-ezequiel@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 8 Oct 2019 14:27:53 +0900
X-Gmail-Original-Message-ID: <CAAFQd5BNu2ea3ei_imHmEwmdna0+iiSbQSv_SBsdHfP4Uh1h4Q@mail.gmail.com>
Message-ID: <CAAFQd5BNu2ea3ei_imHmEwmdna0+iiSbQSv_SBsdHfP4Uh1h4Q@mail.gmail.com>
Subject: Re: [PATCH v2 for 5.4 2/4] media: hantro: Fix H264 max frmsize
 supported on RK3288
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_222809_170714_F8D840A2 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: fbuergisser@chromium.org, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Ezequiel, Jonas,

On Tue, Oct 8, 2019 at 2:46 AM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> From: Jonas Karlman <jonas@kwiboo.se>
>
> TRM specify supported image size 48x48 to 4096x2304 at step size 16 pixels,
> change frmsize max_width/max_height to match TRM.
>
> Fixes: 760327930e10 ("media: hantro: Enable H264 decoding on rk3288")
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> v2:
> * No changes.
>
>  drivers/staging/media/hantro/rk3288_vpu_hw.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/media/hantro/rk3288_vpu_hw.c b/drivers/staging/media/hantro/rk3288_vpu_hw.c
> index 6bfcc47d1e58..ebb017b8a334 100644
> --- a/drivers/staging/media/hantro/rk3288_vpu_hw.c
> +++ b/drivers/staging/media/hantro/rk3288_vpu_hw.c
> @@ -67,10 +67,10 @@ static const struct hantro_fmt rk3288_vpu_dec_fmts[] = {
>                 .max_depth = 2,
>                 .frmsize = {
>                         .min_width = 48,
> -                       .max_width = 3840,
> +                       .max_width = 4096,
>                         .step_width = H264_MB_DIM,
>                         .min_height = 48,
> -                       .max_height = 2160,
> +                       .max_height = 2304,

This doesn't match the datasheet I have, which is RK3288 Datasheet Rev
1.4 and which has the values as in current code. What's the one you
got the values from?

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

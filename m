Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3DB1F5A3A
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 19:24:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UqvI/q7x/6n3qaqeX2QCsFOjcMuUwnmlUciSTIFjSTc=; b=qcdsKW3+WPFJiJ
	2lazr9ll0lLvoaDreec7oNOqWGtRikZpo/RXgijvCplJoRRvT27/j3c96006bXDcwxU9EhnzXtbrX
	lEQPoqnMTJyF0/kod1LBHQZzym3papmdIcRxCpw0Ip501owfu51KJKFFjeB/+usbei0jt8E9KWfau
	7Zpbw5ixbOe6dZgO3nQK6bmsXU8BoahuIAEbeeEgqXIPfWrV2uGQwLTJWmllFN1r3gfMVuILQOzyA
	t/qec+SVbpzzWMCU8mWigL3nihb+Dk35jC2zhI483ML5BFmx5qRRH05Mad9Nq8sVQsDBs6j1hk9EO
	DxDL3JG9vGifud07c7ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj4SQ-0003fG-GJ; Wed, 10 Jun 2020 17:24:10 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj4SN-0003el-DU
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 17:24:08 +0000
Received: by mail-wm1-x342.google.com with SMTP id r15so2559249wmh.5
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2020 10:24:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=6ebCrNxAHQ0gIZe9N5QEwM65lHt3l2UflVFFKH8AQfE=;
 b=DrXye6cjuXzCnAHm14ZUlFQ9UrhRT282GWBt//dETHTCNOsZGe68n0HNTr/lP6l+hh
 aHJAPnZWzba8TmA/Tu+mm45S6HB3hCKZnx1pw1MkR7BB76FjVf2kORmZU3pz5x+dXCeQ
 ZzjbfDjJczEyt9Jw5Z9smO6Hpp8nsaAyrx9KE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6ebCrNxAHQ0gIZe9N5QEwM65lHt3l2UflVFFKH8AQfE=;
 b=iy27qT4tlzHyshMEY3RsdWCs1itoKFgQoDmMWzS9FX2M8zMCtnJJkef5vWK2Y9GW4G
 EjM3YPCrSvKUr/6EVJ8Oc6a1vLNGC1BmmkKYItGlIx+Mu2c/WMoUfMAoh/DllljWdQ8Z
 i87TnJTYbjwe1S4ULIPRMWlgHf00DEWe5EpvqoxQPQMq/7VJGe1KfyZ9B0IKkpWJM5E0
 45/EEmoY4YFkrVz4OW0mWeOSGEpvQfG86qXlPV8xcnsETax7ffQnAwVIkvUAO+lWCLdJ
 Y//Hw5Pp0nRNYmlUlcNsMGxV7IEC5xhw9+d2RlJ1NiP9DEwXa5xjTfeFW8FNOsXDluVx
 g+6Q==
X-Gm-Message-State: AOAM531RAeXZVs1Y7eH9aMgL9919+OpHBLnrjA7jbJWrpBy9x0w4wlr0
 eci7lg/9jDdCGlxFRmMLq9kEOA==
X-Google-Smtp-Source: ABdhPJye6Si80e2SmteHXhfs1v6fReZ/a5P9nbsEUk/JoQcGCjTLd1JJlgSXh4OIthcuN3BEE4YMkg==
X-Received: by 2002:a1c:6a1a:: with SMTP id f26mr4330405wmc.80.1591809845242; 
 Wed, 10 Jun 2020 10:24:05 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id c143sm8047415wmd.1.2020.06.10.10.24.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 10:24:04 -0700 (PDT)
Date: Wed, 10 Jun 2020 17:24:03 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v2 3/4] media: staging: rkisp1: rename macros
 'RKISP1_DIR_*' to 'RKISP1_ISP_SD_*'
Message-ID: <20200610172403.GF201868@chromium.org>
References: <20200609152825.24772-1-dafna.hirschfeld@collabora.com>
 <20200609152825.24772-4-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609152825.24772-4-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_102407_478937_7FD6B231 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

On Tue, Jun 09, 2020 at 05:28:24PM +0200, Dafna Hirschfeld wrote:
> The macros 'RKISP1_DIR_*' are flags that indicate on which
> pads of the isp subdevice the media bus code is supported. so the
> prefix RKISP1_ISP_SD_ is better.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-common.h  |  6 +--
>  drivers/staging/media/rkisp1/rkisp1-isp.c     | 42 +++++++++----------
>  drivers/staging/media/rkisp1/rkisp1-resizer.c |  2 +-
>  3 files changed, 25 insertions(+), 25 deletions(-)
> 

Thank you for the patch. Please see my comments inline.

> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> index 39d8e46d8d8a..a6cd9fc13b3d 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -22,9 +22,9 @@
>  #include "rkisp1-regs.h"
>  #include "uapi/rkisp1-config.h"
>  
> -#define RKISP1_DIR_SRC BIT(0)
> -#define RKISP1_DIR_SINK BIT(1)
> -#define RKISP1_DIR_SINK_SRC (RKISP1_DIR_SINK | RKISP1_DIR_SRC)
> +#define RKISP1_ISP_SD_SRC BIT(0)
> +#define RKISP1_ISP_SD_SINK BIT(1)
> +#define RKISP1_ISP_SD_SINK_SRC (RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC)

nit: It might be just me, but this feels to me like obfuscating the
code, because it hides the fact that it's a mask. If changing this
already, could we remove this one and just OR the two bits explicitly?

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

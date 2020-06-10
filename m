Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B781F5A49
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 19:26:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2UzRdXdSL+O6fVgI1Mkgv+8L1J+Cm2RfUrcCY32wPto=; b=MI+PqLC1YdavY4
	fG0trrUXvjohpxS5Qv9vb/JvkNiiN5zUIQsbzMGz2hQVYq3UikN0tttiRp9kehKjeaslyKGawuJfI
	shny3Mzhc38j6G/wGSv5Ixr0uVM+XCaZuEhXLllWN0JDJATT330pWEkSHDIqzYul9a/zVHuI2ULSc
	bT4GRHLqUJYiQrLqqVfQfbXoGV9oU+z90XvnXOZYttpNTg9m4UNYUb4gPXJs8cD85vu9Cp5DdCIV2
	DmiSjEoYDZDUNUNJB93sEy/Sw3++msuU/D/QWEN+gPljGw5Cm0v2THwkn5d7DXBqNnCn4Uwxm+Cqe
	S9BuNfXtqbJtnYmT4f+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj4Uf-0006cy-Gn; Wed, 10 Jun 2020 17:26:29 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj4Uc-0006cf-6o
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 17:26:27 +0000
Received: by mail-wr1-x444.google.com with SMTP id q11so3216777wrp.3
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2020 10:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=pN4qz1OJ+BC71bQQgMJmBK/Rkr81r60RgNevtGOVJRw=;
 b=PjPq4t33YTJYhGikvp5ZvRE311q6JnUdjD5ZseotuyhX9vuY0ugbZuohTre+MvhoGL
 AuX07/T01LF1doxI0rRSL87hT+g2TyOl0VFpIUfRIUTiZw9rc+w2cQRWCwe+FfNVb40O
 k6bkWvWF8UEVtN/VIqLU7Fe9ppskcls1l7cbE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pN4qz1OJ+BC71bQQgMJmBK/Rkr81r60RgNevtGOVJRw=;
 b=QIuy2pmVwWX1QqzwL6FTd8smY2bptEE5IG9gzrPuPd82wXMufhTAsnFIayu5jvH10V
 DObDNJX4OcLo//WF94j3CwMtdpC2Dtoiw7fHlg0wR9OB/lVKlhveOUZshiWlzAbf2bGp
 TtdaFTfWkqudFcz2UYSu0Z1xauVIOBx4v70cWKQbuu6Rapm8E89GiJAHg5XnAxiZoPtn
 m8m9RulFh/uI9tvMP/CxSP4GCcgqxpXe5jYDRLMYgDjhMEZIxLjiVnbtGt3efM24XWzR
 tEhGCtImf8LoyD7hPikCDw/mK7fRM3iX331dYhlLxJ5y3b8aiZcveeyjYZ+h5LuN01hb
 IHgQ==
X-Gm-Message-State: AOAM532Jz+Aai7UGW7K++7bsS7agaS6vDrO9/b6nm5Ia4a6ESPzTUKtW
 91rNeHrN0qJL3B4P1qtjzNdJkw==
X-Google-Smtp-Source: ABdhPJycBqFX8BS1ni07dLwx0DghAhGJcYIzvSfMyZ0y/3zEl5jFPCRUarF5/ZW+wN8AFqWV4oa6Jg==
X-Received: by 2002:adf:e588:: with SMTP id l8mr5198923wrm.255.1591809984517; 
 Wed, 10 Jun 2020 10:26:24 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id h12sm648820wro.80.2020.06.10.10.26.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 10:26:24 -0700 (PDT)
Date: Wed, 10 Jun 2020 17:26:22 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v2 4/4] media: staging: rkisp1: rename the field
 'direction' in 'rkisp1_isp_mbus_info' to 'isp_pads_flags'
Message-ID: <20200610172622.GG201868@chromium.org>
References: <20200609152825.24772-1-dafna.hirschfeld@collabora.com>
 <20200609152825.24772-5-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609152825.24772-5-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_102626_249798_EF88AD7A 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

On Tue, Jun 09, 2020 at 05:28:25PM +0200, Dafna Hirschfeld wrote:
> The field 'direction' in 'struct rkisp1_isp_mbus_info' holds
> the flags of the supported pads of the mbus code. Therefore
> the name 'isp_pads_flags' is better.
> The patch also rename a local variable 'dir' that holds such flag
> to 'pad'.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-common.h  |  2 +-
>  drivers/staging/media/rkisp1/rkisp1-isp.c     | 46 +++++++++----------
>  drivers/staging/media/rkisp1/rkisp1-resizer.c |  2 +-
>  3 files changed, 25 insertions(+), 25 deletions(-)
> 

Thank you for the patch. Please see my comments inline.

> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> index a6cd9fc13b3d..1dda6d53adea 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -283,7 +283,7 @@ struct rkisp1_isp_mbus_info {

FYI, there is some missing documentation of the fields above. If
changing this field, perhaps its documentation could be added as well?

>  	u32 yuv_seq;
>  	u8 bus_width;
>  	enum rkisp1_fmt_raw_pat_type bayer_pat;
> -	unsigned int direction;
> +	unsigned int isp_pads_flags;

nit: Wouldn't "isp_pads_mask" represent the usage more precisely?

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

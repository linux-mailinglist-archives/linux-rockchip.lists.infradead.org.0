Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F9E1E335D
	for <lists+linux-rockchip@lfdr.de>; Wed, 27 May 2020 01:05:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4bUBDDwB8JZgOjJ54d0wBUNXANoRmik0pN1XShrx3KU=; b=WahftkghxDDF3t
	+YpXwMnM9aTZbziuz5P/eQVI90gcLP1b698psPK6BzU4Pa5VKNLG8DpeIg+OrLcjR0hYSsOLf9Zf5
	tr+jTn/959g/HYUnhFkscFhlwd6MDfiOOuNqLLMC1QXhb95fBijn/EgzswfENLquWM7c6+QtRXMiS
	GOb5zQ/sg1SGFTlf6hAGCk1/kFJlUlYGpn4Yi+pmpP2YXEtlmbHv/m6zLrX8ejUh0JUSs1vYOVAsc
	4531wEaZy+E7IWlUJgjQdD42vrXdosD4b7lIkq60QzjfSM06mCz2PqgaHLJZw2laDkgUX3dfivSF6
	cDQjHjgMjWI67my0e/Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdid2-0003y5-3N; Tue, 26 May 2020 23:05:00 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdicy-0003xT-Gw
 for linux-rockchip@lists.infradead.org; Tue, 26 May 2020 23:04:57 +0000
Received: by mail-il1-x143.google.com with SMTP id q18so1082250ilm.5
 for <linux-rockchip@lists.infradead.org>; Tue, 26 May 2020 16:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=obH5i5ZLEC+haCrlLvKdZKrgXWxLuGsWc2kPghQguLE=;
 b=kgVMTXncE2fTzJlKGbZSJKTZ0q/yknIZ8IrO7Pao+r8c6fm+zn9Qh6drDKjywE3p3j
 fmX7anB6fhoDzBNFPI1DqPh6RsSXRsA3fcg/s4hONt6mNImG3zKYcCxdbPENxn67M79+
 3KSC4Ns5EBvHo0NhZGnRQgmKKHkFmokLxvW/A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=obH5i5ZLEC+haCrlLvKdZKrgXWxLuGsWc2kPghQguLE=;
 b=tceOwhODHf1BXccGhzn70Xh04vi95eDA40vGOf4BscVko/qzxorDY51R9x9I/LaDB0
 9AS9CDCbG7WHjWVUvoHbCBadRVdh152BmRCeAL/5Psf9VecparUMkYBZbP2sTBrNKcE6
 PPV4E9pvWcsqYNj2raSFMKa0dwucAtTwP2AMWWeMkTdbrV07RkAzRnnE7khBAaCyATS5
 j7soB/QOj9HI2HoQ4iwd+7GvV/Phe/rd8u+vY/rwHrq1Sg6nS1fCK14qPPPKeX+jI7ZQ
 u46BoB9mRmhVrNOXSW/U5+7zxbKdXzieBc5/hLNh27ZHScIoyPyYWfaaQor88HoF2hQj
 WaLw==
X-Gm-Message-State: AOAM530MczdWkaxqLfwd0me0uEKa+16yXaZvAPiZM6h33+LivBI83Rxi
 KURYFlaHPHzZRbkzeFY8qniAcS9KUv00dGfkl7IR3Q==
X-Google-Smtp-Source: ABdhPJxpG2ydFyfTP4tfz+dav1pL5rV0anMGDvTScjZQp+tf6p7WXzJJnDZYWiTUJMb/ELJvnJzbBcJXg+0ydzz7Rms=
X-Received: by 2002:a92:b11:: with SMTP id b17mr3390100ilf.257.1590534295569; 
 Tue, 26 May 2020 16:04:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
 <20200515142952.20163-2-dafna.hirschfeld@collabora.com>
In-Reply-To: <20200515142952.20163-2-dafna.hirschfeld@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 27 May 2020 01:04:44 +0200
Message-ID: <CAHD77H=LhYV31Jw_-cTvXPh0K2ocr6o97ymJ2KkmCdkH_DE7gg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] media: staging: rkisp1: cap: change RGB24 format
 to XBGR32
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_160456_582269_F13B78AE 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Hi Dafna,

On Fri, May 15, 2020 at 4:30 PM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:
>
> According to the TRM, the YUV->RGB conversion outputs
> "24 bit word". What it means is that 4 bytes are used with
> 24bit for the RGB and the last byte is ignored.

I don't see this mentioned in the datasheets I have. On the other
hand, XBGR32 indeed makes much more sense, as the 3-byte RGB isn't a
very popular format. Have you validated that the hardware behavior
indeed matches that?

Best regards,
Tomasz

> This matches format V4L2_PIX_FMT_XBGR32.
>
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index f69235f82c45..61b9ebe577b2 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -276,7 +276,7 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>         },
>         /* rgb */
>         {
> -               .fourcc = V4L2_PIX_FMT_RGB24,
> +               .fourcc = V4L2_PIX_FMT_XBGR32,
>                 .write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>                 .output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB888,
>         }, {
> --
> 2.17.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

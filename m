Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF7D11F299
	for <lists+linux-rockchip@lfdr.de>; Sat, 14 Dec 2019 16:46:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D6ZcFuHMM5psU6Ggr014AwOyqUMboUqjVZYiD/hOsoc=; b=LZbhFdTNK/2wE8
	aeNkXDB/AdEIxO072qC6ooV73xZgamqAmj94e12awJe2+LaX8EKxnzqY5wLB8ZCBFO27sMlxUfJUK
	zrsprYnGsP6oOCH9rY4DaEGYBOoeRvF101jv52wD4Lr3sv+h5IJkNFxlPWSDD4WsqHIoxLRwkq9n8
	GGPVa83LTfd+WBHR+crZ8YDl9G7Vz6aqYl0EANYgmaawNG7lqQsp39JtBxS69vl0PVEEdr733ZUxu
	h4oL49y2qaOOJc34f/6Yx0hvdnGWmM12D3AX6O4cJbWIkT9GXHPZaCg1EdhpnjuorlUqoVFZA0Fwl
	nl9GseIuZZGeRV3exNUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ig9d2-000859-D4; Sat, 14 Dec 2019 15:46:48 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ig9cy-00084c-MY
 for linux-rockchip@lists.infradead.org; Sat, 14 Dec 2019 15:46:46 +0000
Received: by mail-wr1-x444.google.com with SMTP id y17so2009748wrh.5
 for <linux-rockchip@lists.infradead.org>; Sat, 14 Dec 2019 07:46:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=4ZheM6H1IJf91c1ZceviNMo0bD3V67BjHbfGbfFZiDQ=;
 b=c+R88c7R0IFMXSgL7bFY3SG0xEGz8jTGqMRLXSXdSgjMZ8NzhFr4pyDNFM52Qlx3aC
 gVryr6ldpTFFY+5iU+28QaPoRQdhYp8sHsQpLHI4VnnmlK6u4OgEUR3ryfQR48fMi8Kf
 PRnDK8ddLTvbgvD4gxLJM5yJw44sNPM3b3dF9wZshjKCZ35oqSt3k8aVT01azxClcdSr
 JXv52XWrTwgiJUpVd/1hlwVHM7vm/vO8+f+n8aR954H8PAFCEKa47zgKNdF71jaCuD3a
 J3K5/9p4qwEpShcI7qCNAWJ+d5NBmc44qKSBJx05XhcDKSfRdPPl4bSuQ4wSUMuts9WI
 /pDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=4ZheM6H1IJf91c1ZceviNMo0bD3V67BjHbfGbfFZiDQ=;
 b=qripDTIMAFQhOsM+mLj2DoBHZslRffXvquCWHVwy3PCcUg+DAmixN/1XLkblZ+FIRZ
 WSR0V0/jqVOBQ6NZdSrxnCyxpmveqTf0F0GrhPLT7lVAcbf1LOSCGJk/Z6tPXYxEJydb
 Vu5DnVN/OdwxfXodK9/OqkQVfWO+sjjjTbhFtnXZIMR0k0dKJwQdqo0up+L/ouTFNaMn
 FbOvuN4bcJwdH3L4UJmq8SOxxMPef5T5rEcXi8VtXqJfvf7JRcX9Yg+kX2D4U8M34T5i
 o08u7XqWKgsTbRBQqS02Y4/wZdzvDYDlIVy5jsd8978NwF4rpKdpP/FT+N9ABLB98jpR
 SE4Q==
X-Gm-Message-State: APjAAAXmYQctIT210Q38knjt26Gu2KObAH3RCEePiq/jkUL+1ctB71hY
 w3QM1HEC0T83si9gQJ27MyM=
X-Google-Smtp-Source: APXvYqxUWjq2pg/m7vAarnMa01TbxmF7dhf3iGJcVpBhIKgU/YHr0zB5TJ8QARwhlC7PuseFZK7R2Q==
X-Received: by 2002:adf:df0e:: with SMTP id y14mr18158363wrl.377.1576338398416; 
 Sat, 14 Dec 2019 07:46:38 -0800 (PST)
Received: from apple.sigmaris.info (apple.sigmaris.info.
 [2a02:8010:6606:0:feaa:14ff:fe20:9878])
 by smtp.gmail.com with ESMTPSA id s65sm14819596wmf.48.2019.12.14.07.46.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 14 Dec 2019 07:46:37 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH v3 4/7] media: hantro: h264: Use the generic H264 reflist
 builder
From: Hugh Cole-Baker <sigmaris@gmail.com>
In-Reply-To: <20191213125414.90725-5-boris.brezillon@collabora.com>
Date: Sat, 14 Dec 2019 15:46:35 +0000
Message-Id: <24EFC68C-CF34-4D6E-8927-1CFA0CE81F45@gmail.com>
References: <20191213125414.90725-1-boris.brezillon@collabora.com>
 <20191213125414.90725-5-boris.brezillon@collabora.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_074644_760353_9872C075 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sigmaris[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Boris,

> On 13 Dec 2019, at 12:54, Boris Brezillon <boris.brezillon@collabora.com> wrote:
> 
> Now that the core provides generic reflist builders, we can use them
> instead of implementing our own.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
> Changes in v3:
> * New patch
> ---
> drivers/staging/media/hantro/hantro_h264.c | 237 +--------------------
> 1 file changed, 8 insertions(+), 229 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_h264.c b/drivers/staging/media/hantro/hantro_h264.c
> index 568640eab3a6..d998272d20e6 100644
> --- a/drivers/staging/media/hantro/hantro_h264.c
> +++ b/drivers/staging/media/hantro/hantro_h264.c
> @@ -11,7 +11,7 @@
>  */
> 
> #include <linux/types.h>
> -#include <linux/sort.h>
> +#include <media/v4l2-h264.h>

With this patch, CONFIG_VIDEO_HANTRO needs to depend on CONFIG_V4L2_H264,
without that it can encounter linking errors due to missing symbols for
v4l2_h264_init_reflist_builder, etc.

> #include <media/v4l2-mem2mem.h>
> #include "hantro.h"
> @@ -240,229 +240,6 @@ static void prepare_table(struct hantro_ctx *ctx)
> 	reorder_scaling_list(ctx);
> }
> ..snip..

--
Regards,

Hugh Cole-Baker
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

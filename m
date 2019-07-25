Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD1D75308
	for <lists+linux-rockchip@lfdr.de>; Thu, 25 Jul 2019 17:42:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=va1a/37B3suO9GAJrK+ScvKOdR04AfEM+6g6OhSkyTw=; b=ft3AaV1T/DpERl
	TAYICv6lXT4MtWph0hMSLKjm66duxElI8MI57pgxGLyHqjQrAHkFH2HnXgBVsoaG98zZnrf5uEZic
	PYZwgr6p2A3MDcGPk+U7TjxNkoLBR4RjKEs7WMMaM5J+7vDE2aSxFQ/Orm7LwXCaPmAtZbe+fJdOF
	3QftetEOrkrIUPybAciWeqwJLSxWxLC57B6gXXTLnNcxdBn5IRfnJShfQ6Dn5XyJ7kgCdty+6REXT
	0WGUs6rNX0CykmxCTDhYk4e8G0H9fhIQP6IPMdPPkZPMgHOzAiXOm7Qx0i6Df9O9vV2O0EKGVELQk
	4eQmWSWOl6koHg3nBLkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqfsf-00026H-ME; Thu, 25 Jul 2019 15:42:09 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqfsb-00025B-T0
 for linux-rockchip@lists.infradead.org; Thu, 25 Jul 2019 15:42:07 +0000
Received: by mail-ed1-x542.google.com with SMTP id v15so50667089eds.9
 for <linux-rockchip@lists.infradead.org>; Thu, 25 Jul 2019 08:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MNkXECJCwZrlY0TNH7A1b2lGWt3otavBoyZrTznJtcA=;
 b=jI+NycjUP6dxobiyu7dooewJyiMPSKnZuEAR9QAAdHorsKKv9zQty8Zi/e3mTuuwTw
 f+5REnTryYYRy7SGL9GubSQdxHJJASl9Ylgtuj/XQKjHnxc3LR3PA0ZTh3KESVVHAP0l
 b+ZmbxdwQ8OgMxYul7lgpNzEHZXSO/mmnFCbw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MNkXECJCwZrlY0TNH7A1b2lGWt3otavBoyZrTznJtcA=;
 b=Ut4FvbKM2HxCAPhXCI4Prp9Emd0H+2wtshsBOI4j/Tpwh7WsMFnAkvKSXTz0vMn4R3
 2i2g2SZlbHR6WVUH6ENra8qhN+55I+JgjO4Ol3sArKmwUiafN2fGNhlqqXFjpyI4sKDP
 RQcD0dmIfWHRUn1En60dLhTenWalf20+TxtHZEHzzNotLNr39A5UD2PLAZazfRpVCWSx
 HKcZbJZW8YcB3161osZpWA6gx5CgTWzdMReV6T37zbT5ov4VThny9KJlKYoXBrrPw9a2
 eZZHxLwSdQHNHP+PFBUmTlEFj7LBqGREvIJbc7RbxRPFwkfH/HiAnDjAd/ceVhdn6Msd
 L1tg==
X-Gm-Message-State: APjAAAUADcKeX5scqCaVNdxIKmsVdEsAPRWE5mVIWCZ0nHOLtFHSB+1e
 qx5VObmaFk2zu9iqWzzxl9WFULduFi7Tbg==
X-Google-Smtp-Source: APXvYqwNlOgzWmKMrJ55N+MMeWsVeUBfyguKdTJxigFndRxEgw42aYSFNnpPOlYX1T41+7CtqD2JOQ==
X-Received: by 2002:a17:906:8591:: with SMTP id
 v17mr68005858ejx.244.1564069323379; 
 Thu, 25 Jul 2019 08:42:03 -0700 (PDT)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com.
 [209.85.128.49])
 by smtp.gmail.com with ESMTPSA id w13sm9805250eji.22.2019.07.25.08.42.02
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 08:42:02 -0700 (PDT)
Received: by mail-wm1-f49.google.com with SMTP id h19so36055017wme.0
 for <linux-rockchip@lists.infradead.org>; Thu, 25 Jul 2019 08:42:02 -0700 (PDT)
X-Received: by 2002:a1c:343:: with SMTP id 64mr77603832wmd.116.1564069321964; 
 Thu, 25 Jul 2019 08:42:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190725141756.2518-1-ezequiel@collabora.com>
 <20190725141756.2518-2-ezequiel@collabora.com>
 <1564069001.3006.1.camel@pengutronix.de>
In-Reply-To: <1564069001.3006.1.camel@pengutronix.de>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 26 Jul 2019 00:41:48 +0900
X-Gmail-Original-Message-ID: <CAAFQd5BxQJBNqMnS1bCVXz-9+dCkw0g4xmiPLYgtVCJx_pbRPg@mail.gmail.com>
Message-ID: <CAAFQd5BxQJBNqMnS1bCVXz-9+dCkw0g4xmiPLYgtVCJx_pbRPg@mail.gmail.com>
Subject: Re: [PATCH v2 1/7] media: hantro: Set DMA max segment size
To: Philipp Zabel <p.zabel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_084205_953477_32150AAF 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: fbuergisser@chromium.org, Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 12:36 AM Philipp Zabel <p.zabel@pengutronix.de> wrote:
>
> On Thu, 2019-07-25 at 11:17 -0300, Ezequiel Garcia wrote:
> > From: Francois Buergisser <fbuergisser@chromium.org>
> >
> > The Hantro codec is typically used in platforms with an IOMMU,
> > so we need to set a proper DMA segment size.
>
> ... to make sure the DMA-mapping subsystem produces contiguous mappings?
>
> > Devices without an
> > IOMMU will still fallback to default 64KiB segments.
>
> I don't understand this comment. The default max_seg_size may be 64 KiB,
> but if we are always setting it to DMA_BUT_MASK(32), there is no falling
> back.
>

DMA mask and segment size are two completely orthogonal parameters.
Please check https://elixir.bootlin.com/linux/v5.3-rc1/source/drivers/iommu/dma-iommu.c#L740
for an example of how the latter is used.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1A41FC86B
	for <lists+linux-rockchip@lfdr.de>; Wed, 17 Jun 2020 10:19:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T+XqSNHgrSELNf/E+ssvk5WaEaiXPsvMomadMFwYggI=; b=HDksh9hHgMN+IU
	MHpIfdP9II1tgkf1cgFCbIdtXlv0p+vsc9JAHO3rOgUGuq3U4half5+0VCbtiW4OMV/Tf5YkBf725
	JHWp9Y/b6G8eU8waC6nCyC48tOp+Q0a+mqjADVKnC5QOdYwik1fR6CZSUgEl1FlrP/BwebTxNolLv
	33O9769nI4M5sL/qtD1QxlxeTPesyzBehFk0pUe6DZRbzQzj/JMn9d6ghtQeb+fs7+Jrelab+W3J4
	RS73V4ZyKWkxardYEy5FaGkVrdiADgaObou3ZO76zcFFKWgF+BStuF+9kVL38CNHG17yG3FoW+jUM
	UqD8EX012SoxcPTpQNPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlTIN-0005jn-4Q; Wed, 17 Jun 2020 08:19:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlTIK-0005il-1q
 for linux-rockchip@lists.infradead.org; Wed, 17 Jun 2020 08:19:41 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jlTIF-0005gy-9c; Wed, 17 Jun 2020 10:19:35 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: set rockpro64 usbc dr_mode as host
Date: Wed, 17 Jun 2020 10:19:34 +0200
Message-ID: <25281855.0x1kyemSPj@diego>
In-Reply-To: <20200614142950.1120694-1-pgwipeout@gmail.com>
References: <20200614142950.1120694-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_011940_095441_55B0B397 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Sonntag, 14. Juni 2020, 16:29:51 CEST schrieb Peter Geis:
> The usb-c port on the rockpro64 does not detect devices reliably when in otg mode.
> Setting the mode to "host" allows the port to work reliably.
> This aligns with the pinebook-pro configuration.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>

applied for 5.9

Could you also include linux-arm-kernel@lists.infradead.org for future
patches please?

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

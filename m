Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE151D8B24
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 May 2020 00:43:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=COTX3G7PBChxrgIzhif5ctNGz15XWhch0cgUza555gQ=; b=Rec3HjVOq2jdvF
	dBS1ETqMaNwTPiaJ2/MG0SBD3fL/9po10khajqPT757JBsVislWimGH8oMyI7THpDbBvhNaANp/6S
	+nk/ui3ZA6kMaWGi/6ozia1TE2wf8Wu+CcMSaYjPjABn+W+YvPCjZumKWB3BCpLuQDAC1r8YrL6+l
	j90TEwD3McSbYCNhoAN+3K0l3fHZMnC0xq2C/iMrLmJoIwBIRnX/aS7npG5cuby8yC6tpYIXnGKd7
	CjDXpt6FPeuCAHAGi83hyYjruViZS95ifQ/rBfBp8jux7lPkF4hQEdCm1p6VHSkFQbm0kAeeCdR/6
	Au4klam06xV2gC9VpOcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaoTK-0003cc-9Y; Mon, 18 May 2020 22:42:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaoSo-0003Ac-Cd; Mon, 18 May 2020 22:42:27 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jaoSj-0000Ct-Gg; Tue, 19 May 2020 00:42:21 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: Re: [PATCH] ARM: dts: remove disable-wp from rk3229-xms6 emmc
Date: Tue, 19 May 2020 00:42:20 +0200
Message-ID: <113583326.smLjuVpvy0@diego>
In-Reply-To: <20200406135006.23759-2-justin.swartz@risingedge.co.za>
References: <e602c1b8-3606-a8d3-c64c-ec9e58315974@gmail.com>
 <20200406135006.23759-2-justin.swartz@risingedge.co.za>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_154226_421685_A6A0AB86 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Montag, 6. April 2020, 15:50:05 CEST schrieb Justin Swartz:
> Remove the disable-wp attribute from &emmc as it is, according to
> Documentation/devicetree/bindings/mmc/mmc-controller.yaml:
> 
>     "Not used in combination with eMMC or SDIO."
> 
> Suggested-by: Johan Jonker <jbx6244@gmail.com>
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>

applied for 5.8



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

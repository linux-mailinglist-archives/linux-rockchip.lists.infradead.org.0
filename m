Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DAAF4EF3
	for <lists+linux-rockchip@lfdr.de>; Fri,  8 Nov 2019 16:09:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QPgW5T5AZTwsZ/EnUO6IFOF60dWzy7ockzOhJo0zR/M=; b=Y/2TPlaq+EgqCr
	KS0hOoE0Am6hOBmGGbQ7rbnr2HzO8ZLlDxr/ZtaLQATR8PiX7cztc4LH9yuyvzQkFTp3n5LD4oMPw
	NZJO6I8Bhbb+YZoFzfOSYaNAt+UEGbZaAiS4XubuxJ22N5k1CftWnfrkR7pWTNE1LPsGRBLBOuygf
	1LlkrEQMxQNznd1J871x28dVcT97pZDJagLQn0CVVQJUS9calBjR+EDQDqV5u6R0xja3ephPhvJub
	WCqPC0I/umoLjJEk8WxNENfaWqYQanxfJvMOzg5KDfbzSA6q3njHaCD1mo13piAC5PF5J5h0z2ehb
	Upqlp21ShrIZMNMDIl4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5tK-00050J-F3; Fri, 08 Nov 2019 15:09:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5t2-0004fM-5v; Fri, 08 Nov 2019 15:09:21 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iT5sy-0001qq-Oy; Fri, 08 Nov 2019 16:09:16 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: ARM: rockchip: Add Beelink A1
Date: Fri, 08 Nov 2019 16:09:16 +0100
Message-ID: <4642614.B1BnqdIJrb@diego>
In-Reply-To: <82324d17b770fa8ea189fa708490d2c8c0c9290e.1571090991.git.robin.murphy@arm.com>
References: <82324d17b770fa8ea189fa708490d2c8c0c9290e.1571090991.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_070920_374750_77733F51 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Dienstag, 15. Oktober 2019, 00:19:04 CET schrieb Robin Murphy:
> Add a binding for the RK3328-based Beelink A1 TV box.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

applied all 3 for 5.5

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

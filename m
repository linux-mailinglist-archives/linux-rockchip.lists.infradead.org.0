Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E7F1AF9A1
	for <lists+linux-rockchip@lfdr.de>; Sun, 19 Apr 2020 13:39:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lRJQCig0ckWbEctx0GyAziQToDg4Dqg6eGL7meqgC2E=; b=l43S8LSYQ9Qk+e
	Ec0HG1oOQlDhDijInXXHzKsUZheHbL6H5Ci1CfAdz11LtWAbd7JrLZ73v++CY6kWkeRNAxMwUwi94
	KrV5uMdb1Tk6/QvIR9O4ZyVK45UFkX/P4TV/xmI5wHHG+lNj++bN3ofWWC8fppCgL4yZ7zfenbg5y
	L2vqpDVO1sEgOgMsSNxdM2236dU+o5rSAxdH+Qz9r8V22F6loBEkBwagcLGyhNF9Nlvv5gXzkOBZC
	KpnzmMhFAPgCM0tVFNfYa7LIiVoMlNS81ePbFxL30L/qGNvbA1MQQRBeb5eICPkFkzdrNkdytKUJt
	c1FU/6c5fr4GKAFOY/Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ8I5-0007YN-LR; Sun, 19 Apr 2020 11:39:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ8Hz-0007Vy-GV
 for linux-rockchip@lists.infradead.org; Sun, 19 Apr 2020 11:39:10 +0000
Received: from p508fcedd.dip0.t-ipconnect.de ([80.143.206.221]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jQ8Hx-0006VP-IM; Sun, 19 Apr 2020 13:39:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Tobias Schramm <t.schramm@manjaro.org>
Subject: Re: [PATCH 0/2] Fix some GPIO setup on Pinebook Pro
Date: Sun, 19 Apr 2020 13:39:04 +0200
Message-ID: <3127044.X0uEAIj3pV@phil>
In-Reply-To: <20200414163952.1093784-1-t.schramm@manjaro.org>
References: <20200414163952.1093784-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_043907_549717_5A85934B 
X-CRM114-Status: UNSURE (   9.00  )
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Dienstag, 14. April 2020, 18:39:50 CEST schrieb Tobias Schramm:
> This patchset contains two small fixes for the dts of the Pinebook Pro.
> The first fixes inverted logic on the headphone detect GPIO.
> The second patch fixes unreliable DC charger detection.
> 
> Tobias Schramm (2):
>   arm64: dts: rockchip: fix inverted headphone detection
>   arm64: dts: rockchip: enable DC charger detection pullup

applied as fixes for 5.7

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D3245B83
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 13:33:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hMOhVN8yj80Q5lGwW8HWSAoZojPvyWc/3BT/yotRAII=; b=TojyR40iWCYz8E
	dh9OwW9Bq9JmQ9x/t4pwz8rsKc8O/ObSpuHT2VdE2Vmaf2/E5m0aAiCkCl8bmOVLoPws3wyoMUXft
	++6F8Af0BT8Hb/PfE4ptF/5X9RbWt38IsdCmmEzNtmFfz0UHuzPVKynB7krAEy9asBFUuV7KsdhUW
	PcvGp6m71TykNX24aVIgIZ6xIJ3yBvg6fDbC59zlqpZU708g7e0+mQVlhE9oO+KGHds+bJYjThtI9
	RwLeqGrXDZ8Agn4rx2YNxM8qjBqirif6vKnlbFUSdctF7JEoYIr1k17UuSJC2R/Hw2LqzMtdeAZtL
	kkJlSOoJ7ZjDuiaVt7JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbkS4-0002Cj-Mx; Fri, 14 Jun 2019 11:33:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbkRq-00022g-Si; Fri, 14 Jun 2019 11:32:48 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbkRm-0004mJ-74; Fri, 14 Jun 2019 13:32:42 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: xieqinick@gmail.com
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add support for Khadas
 Edge/Edge-V/Captain boards
Date: Fri, 14 Jun 2019 13:32:41 +0200
Message-ID: <4566563.QzcLDyM7tj@phil>
In-Reply-To: <1560153473-17190-1-git-send-email-xieqinick@gmail.com>
References: <1559035267-1884-1-git-send-email-xieqinick@gmail.com>
 <1560153473-17190-1-git-send-email-xieqinick@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_043247_079954_B3DD97E8 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, nick@khadas.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Montag, 10. Juni 2019, 09:57:53 CEST schrieb xieqinick@gmail.com:
> From: Nick Xie <nick@khadas.com>
> 
> Add devicetree support for Khadas Edge/Edge-V/Captain boards.
> Khadas Edge is an expandable Rockchip RK3399 board with goldfinger.
> Khadas Captain is the carrier board for Khadas Edge.
> Khadas Edge-V is a Khadas VIM form factor Rockchip RK3399 board.
> 
> Signed-off-by: Nick Xie <nick@khadas.com>

applied for 5.3 after doing some style-fixes to the edge.dtsi
(2 missing gpio constants, some newlines and sdio-regulator
references were missing "<..>")

Please double-check the result


Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

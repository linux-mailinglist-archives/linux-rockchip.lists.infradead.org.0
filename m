Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 524DF1335C8
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 Jan 2020 23:32:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lQfBbNqYurpv9kHaMV65Vc/avDdqEyVMP60rG8e+hr8=; b=Q9i8gb7ESPFXcy
	tRVKr8unKu9ctgCgoImz63/pqqFZq7oP0a3+qGFwbjEZFyupudysHPjdUXEEhh6X16gZ8HHRNcWZw
	yQSm6MknKVolvCOQjH2QCc3IljYOWmtzz2SMEhEsS+p8VjxpVboRx7gy8XQa7cfBItraarX6rBaP/
	PcSaR1tDk6SJu702Gb7FwXvocSmRMtIcTDxUGKJSp8DxSMj/PFqqd4hLRd9QQ0TXX0VYPiJbCESZW
	nbXIw9/M2iGRi+nxiUcKSulq5FW9by/7QBcB0YgcCp+sJ9Jr9XfCZM71t03Zt5UtPouhXVk34Ra9d
	29wjgy1MXi+EI5QdzxTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioxOb-0007zs-LI; Tue, 07 Jan 2020 22:32:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioxOU-0007t8-6e; Tue, 07 Jan 2020 22:32:11 +0000
Received: from ip5f5a5f74.dynamic.kabel-deutschland.de ([95.90.95.116]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ioxOP-000534-Gq; Tue, 07 Jan 2020 23:32:05 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: rk3399-firefly: remove num-slots
 from &sdio0 node
Date: Tue, 07 Jan 2020 23:32:04 +0100
Message-ID: <2012646.CMKZZmdTN9@phil>
In-Reply-To: <20191231191154.5587-1-jbx6244@gmail.com>
References: <20191231191154.5587-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_143210_388154_6A7B865A 
X-CRM114-Status: UNSURE (   9.54  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Dienstag, 31. Dezember 2019, 20:11:54 CET schrieb Johan Jonker:
> The option "num-slots" was deprecated long time ago, so remove it.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied for 5.6

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

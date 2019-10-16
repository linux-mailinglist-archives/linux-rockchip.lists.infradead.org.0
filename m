Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE15D9A5A
	for <lists+linux-rockchip@lfdr.de>; Wed, 16 Oct 2019 21:39:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4xryBeOKSYIEMirrBZFGaZV25NxM6Q9uYVqfKI13es=; b=MeioJk/pliKgY7
	PEGi5XsWodNuuX68kyKE6vuToe+xe36szbi2LkL/uc33gAj7Sy7jGpZww7nhqWVlrGocr+2RfKrSn
	0aUzrPlKJHIUfn/m9bA+0cfHLZ5WAl5EmIMEu1nqP+JIyTOl4qutRPX8S1bCbKyLn/pozFnzSiEN5
	+wj5J8LMlRrKkmNHlXDoY97ytzfj1NCRcz5bIhYGRk1PX86IzXKuLvTnKSdAdq2NMLD8VpCEWkue/
	QFtA7vKXRMH2AvOa7vFnUXuR6EiC14xRMsRV9pIBWh6zSy+Cc8MvytnzMcQsg0OEvJNCUBPk3aJGB
	eOUhsP8FRojE4koRfHLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKp8U-0002po-4c; Wed, 16 Oct 2019 19:39:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKp8J-0002i6-8Y; Wed, 16 Oct 2019 19:38:57 +0000
Received: from remote.shanghaihotelholland.com ([46.44.148.63]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iKp8D-00067a-46; Wed, 16 Oct 2019 21:38:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2] ARM: dts: rockchip: remove some tabs and spaces from
 dtsi files
Date: Wed, 16 Oct 2019 21:38:42 +0200
Message-ID: <14689689.bILFhtanru@phil>
In-Reply-To: <20191014210619.12778-1-jbx6244@gmail.com>
References: <20191014174521.11611-1-jbx6244@gmail.com>
 <20191014210619.12778-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_123855_450714_ED7A7EBE 
X-CRM114-Status: UNSURE (   9.11  )
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
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Montag, 14. Oktober 2019, 23:06:19 CEST schrieb Johan Jonker:
> Cleanup the Rockchip dtsi files a little bit
> by removing some tabs and spaces.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied for 5.5

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

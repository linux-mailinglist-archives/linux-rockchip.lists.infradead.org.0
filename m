Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B986116F9F
	for <lists+linux-rockchip@lfdr.de>; Mon,  9 Dec 2019 15:51:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYKliuR4+YtNxRY/SNOwsxxM4jLFulYLXJzPgeBlzJA=; b=tUdVVaIj/cem2K
	k8DkjOEUeBZP5Rg7jrRZcIGUhrIEtI4bZga/1g0cp/Jp2bts+bmXJ6OxCZRqPTjxnyEm7CqTO5dOz
	xjrt6VJRJgSMEqxqtzal1yXIJGXm4vHTu0RmN20EUJuWK18ObuPACCHOP2xKCNmtnkCN4BTzcOZn2
	QOGtSUeiu9H+4mN5VfiXdnPHQggYlIPVjnam/MwKSQfAiIqiLdUlrYbcjeJ04FyketpsA82Nl9Cgm
	6ikdIWQbr0uC+57xJpx18+OVYURp1g288jyZXyYEeqXtHQur4sJ377Y0M4skz7fFuKPyHZXkKF+ca
	m9vif8WjVeotbEnb1VGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieKNy-0000Vz-30; Mon, 09 Dec 2019 14:51:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieKNQ-0008Vv-PW; Mon, 09 Dec 2019 14:51:10 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ieKNP-0001B8-3N; Mon, 09 Dec 2019 15:51:07 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: arm@kernel.org
Subject: Re: [GIT PULL] Rockchip dts64 changes for 5.5 - round 3
Date: Mon, 09 Dec 2019 15:51:06 +0100
Message-ID: <3740589.r5QQWlpvng@diego>
In-Reply-To: <3235791.ImxGk5JOut@phil>
References: <3235791.ImxGk5JOut@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_065108_994998_836534A3 
X-CRM114-Status: GOOD (  10.34  )
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
Cc: linux-rockchip@lists.infradead.org, soc@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Dienstag, 19. November 2019, 14:45:56 CET schrieb Heiko Stuebner:
> Hi (arm-)soc people,
> 
> for whatever reason I've gotten a big avalanche of patches for various
> arm64 parts since the last pull request and with -rc8 being real I thought
> I'll try to get these into 5.5 still to not make the wait too long ;-)
> 
> And I don't think it's anything earth shattering in there.
> 
> 
> If it's not overly late, please pull, otherwise I'll move these over to 5.6
> which also wouldn't be problematic.

just for the record, I've removed the tag and moved patches over
to my 5.6 stash.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

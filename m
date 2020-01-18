Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 816CF141A51
	for <lists+linux-rockchip@lfdr.de>; Sun, 19 Jan 2020 00:02:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c5ZdBjNNMbtXupkAuyOk4aRSdg8sWFf7OmRwZUMmjDw=; b=OAmmdp+BVdVZVo
	z/r3xSoD8pcO+gf5+gkQL+ipg/BrctEBOjpxasm9Es3xIBwnqHwZf24m/D4kdq4B6srvcneMweLTU
	Hjz7ITiRLPKuG7QmpMaN2+RtlcDIaLXVIKAnZQcsbLHp0CgV6RrcrHmoUxkpyt3tQUDhkKZg7laoH
	NhMuXrTfFP7frixJIsrFpIAEzXKR6Og1HEWbUiEuoVFFwhJOoxjx86Y5sfWWBYUXRtyjBl2pXV8c1
	B/6Jorx4xz1c1NDnGuyXf6ODQZsNhIJVv5i1lYf9hnU40FyCsHIxcBq32UHL6XGKAYMgzHNog2M4P
	hb9zUJ6jqihBoHnwRHsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isx62-0000v8-6X; Sat, 18 Jan 2020 23:01:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isx5v-0000qs-0A; Sat, 18 Jan 2020 23:01:32 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1isx5Z-0007IA-RU; Sun, 19 Jan 2020 00:01:09 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: rename dwmmc node names to mmc
Date: Sun, 19 Jan 2020 00:01:09 +0100
Message-ID: <4658509.s4iD4QMAIY@phil>
In-Reply-To: <20200115185244.18149-1-jbx6244@gmail.com>
References: <20200115185244.18149-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_150131_192452_26E42508 
X-CRM114-Status: GOOD (  11.00  )
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

Am Mittwoch, 15. Januar 2020, 19:52:43 CET schrieb Johan Jonker:
> Current dts files with 'dwmmc' nodes are manually verified.
> In order to automate this process rockchip-dw-mshc.txt
> has to be converted to yaml. In the new setup
> rockchip-dw-mshc.yaml will inherit properties from
> mmc-controller.yaml and synopsys-dw-mshc-common.yaml.
> 'dwmmc' will no longer be a valid name for a node,
> so change them all to 'mmc'
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied both for maybe still 5.6

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

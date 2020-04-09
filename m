Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C51C41A31E5
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Apr 2020 11:36:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6d/t0bGTgnxKJbWlhEXDKIgZ0tyYiwKHU20xmTc9iew=; b=Df2wd//uws8o0hbkXV/VWEV7c
	obABat90Iarhs2x9PLDurK6T1RIBICzoJsaaoiW1TsrMFjblnfn5YT2SIhYpC1bIzfZd/i9gH+7z3
	nmOyzcZCZwwh0X1nIzycJOy43iz0qiZQ9fm4UqA2Hghm9zGnnNhUhhcBznPrt7DTRg2bpAs84e7k3
	bL6pUsO6XP93d07QdLOi/k7+zOfjkhD4fXkXggBdzO07aypzc1ZMX1k0cxzm2GU64G77LYCSbh/FA
	D8lBi+Jmpr3qrKYQ8em+PeYNMuCA7DzvnJnl1owCe2bkY4/CeHRFJZxitQ3kAFBRah37PkISr5QLA
	3X8YXqCnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMTbq-0006cq-8z; Thu, 09 Apr 2020 09:36:30 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMTbf-0006V5-QJ
 for linux-rockchip@lists.infradead.org; Thu, 09 Apr 2020 09:36:21 +0000
Received: by mail-lf1-x141.google.com with SMTP id m19so5374273lfq.13
 for <linux-rockchip@lists.infradead.org>; Thu, 09 Apr 2020 02:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=F1hqxHeKu6Sn0qcjBqnpzejmFgF8FiXlYOaHHEiN1U4=;
 b=r9cnIsxGH9g45TL7ekMdcxZMpShKraueO64GLT6yyMthC56S+z0hvUACligVUNToNY
 jEkYid9BTnN3B5HO4QP/VfE5DGdN0bxdrR8s4OCUvRGYmBeB2Vt7DVMO+L2S4fQs9Mlo
 /bT01v49+1apQOFowKkkbv16nQ/dExTSSHDWSJrSHVo9rPhcVwwBhycU/O84PHNyGiwb
 XChLTMm/zk9pii0YUfIMKe32XG+WA01ZozvSayP2PsvF26YcunRcCwIgRgrrVvC85tBU
 C9PfSfl5ITUvE9euSaNitly9N5M+/zfDLpQsFiaF7BQ9GM7k2/a0kwluucySEMF+2lIe
 JwqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=F1hqxHeKu6Sn0qcjBqnpzejmFgF8FiXlYOaHHEiN1U4=;
 b=onkfdKF6Rk2gSjXzplkafY4oDBC3CJn8zcg1j0ymUXsngAdTJvKeBVJXTHOTl+8W7f
 LRef3HZG9rr0J6pYDd5b31Wu/7Sfva/xS5P+lf0qyiJHDwYatGu+2M9CzaHfXRb0/KFy
 40MDmZBUPRXS7/f2cYekq7PqIojrmDxSKyu1GxyJ/Q1mXHyYa6nT4TQoeyrVI/fnkwH1
 /iF6gJO/qJ/N9x6nQfoGAyRijpeI60Hg1e4BtwVfmFfl6Xo2ZMiOMFVZZxauPyfHVuYy
 0E3k+m2p1d4oobJbKfdRckCvuDE/lRR4MTIIh2fKuUT0AgCV3sLLeebM/jPzJXr2jCX+
 5Z6A==
X-Gm-Message-State: AGi0Pub3p4e/3v/r2yRwTf9o+HjpRwfdiiz2skxBSP9BAT7e/xabtU0l
 ARFpBd8uEJcCaqaOfL1gc8n3eA==
X-Google-Smtp-Source: APiQypK/OqsgUggpyVaKp/qQ7mjyDy1mfGomhSAWpX/eUf3QmYwoKQnIdpStF6Miir15JkNuk554jA==
X-Received: by 2002:a05:6512:54e:: with SMTP id
 h14mr7301299lfl.56.1586424975925; 
 Thu, 09 Apr 2020 02:36:15 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:429a:a2f1:594e:c9e:26a1:8a11?
 ([2a00:1fa0:429a:a2f1:594e:c9e:26a1:8a11])
 by smtp.gmail.com with ESMTPSA id 125sm14965138lfb.89.2020.04.09.02.36.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Apr 2020 02:36:15 -0700 (PDT)
Subject: Re: [PATCH v7 7/8] PCI: Add Renesas R8A774C0 device ID
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Jingoo Han <jingoohan1@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Tom Joseph <tjoseph@cadence.com>, Heiko Stuebner <heiko@sntech.de>
References: <1586360280-10956-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586360280-10956-8-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <e3f5fa77-f78e-edbf-9efc-53b5ea620460@cogentembedded.com>
Date: Thu, 9 Apr 2020 12:36:06 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <1586360280-10956-8-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_023619_962014_E136F2D7 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello!

On 08.04.2020 18:37, Lad Prabhakar wrote:

> Add R8A774C0 device ID so that this can be used by
> pci_endpoint_test driver.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
>   include/linux/pci_ids.h | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/include/linux/pci_ids.h b/include/linux/pci_ids.h
> index 1dfc4e1dcb94..9e957c18abeb 100644
> --- a/include/linux/pci_ids.h
> +++ b/include/linux/pci_ids.h
> @@ -2460,6 +2460,7 @@
>   #define PCI_DEVICE_ID_RENESAS_SH7763	0x0004
>   #define PCI_DEVICE_ID_RENESAS_SH7785	0x0007
>   #define PCI_DEVICE_ID_RENESAS_SH7786	0x0010
> +#define PCI_DEVICE_ID_RENESAS_R8A774C0	0x002d

    We don't add the device IDs in this file, unless used in several places.
Is it?

[...]

MBR, Sergei

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

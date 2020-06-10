Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 497991F5434
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 14:06:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OkZPDWRA9heckU73qSZ0BUfjBDrWq4N8rWLzpZdE7MM=; b=ly5Vmn4nu/paxZ
	Dvs+gYYOm67sDlpJlzC8B16cxLsp0BLvlspAQ5yOBRHQ39EWnt1WzUfGgZfgBJiX7kDLHCjAne8e3
	hCvl/V+5PF6Bab8hI9bvbQHbtxnXB9urZJ2nJAeA+Phm6nLef9vyBzyXcoXxuLG32xSpZ4bygyiNk
	dUUsHoTumHGJ9svAgPfCC8MTuleGUciDyPAGyxsKKlNSUQDZVVK+VSzLbtbgdSbSHP0deVGWYyvHd
	ywX0VXFDe+58RVX9OIP96X0mQfm0w060o7hr+XFMtUy3YETaqiulkr8pRfuE6NKeF7nVMH2+s5nz9
	oWpU4URAhKw4C56Tv6Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jizVK-0003Uu-0B; Wed, 10 Jun 2020 12:06:50 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jizVG-0003TP-If
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 12:06:48 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200610120638epoutp03fc87292bf80bd2456cb383fd1aba3093~XLUwWTF5l0743007430epoutp03h
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2020 12:06:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200610120638epoutp03fc87292bf80bd2456cb383fd1aba3093~XLUwWTF5l0743007430epoutp03h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591790798;
 bh=rBEQA1/g9NOMuvbrmZ0Ki5eA/l4pZybEGR6ttqkCWJA=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=jnERCuAKQNxLTyM7LsoxUj5NGspwvnpSr0XZAP8T/wLfoWaW2BV6rCwlTMGOMWMk2
 QLLSPq+xtpQNr84Kr0XKdv6OP+HLi3CNimE1hfdU1m+JPsQ/koHgQDuRXHXWSGt0J1
 m2XLSktLR858iasM3xxq9oaDecvk8wDo+9vNp5Eg=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200610120637epcas1p2046bd0864858a3c214a57286b54ea912~XLUvhZflu1634916349epcas1p24;
 Wed, 10 Jun 2020 12:06:37 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.156]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 49hm1R03VhzMqYkW; Wed, 10 Jun
 2020 12:06:35 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 C5.30.18978.ACCC0EE5; Wed, 10 Jun 2020 21:06:34 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20200610120634epcas1p37bf9c14b332ba51efafd2cfaff261ee9~XLUs3Xxep1322313223epcas1p3X;
 Wed, 10 Jun 2020 12:06:34 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200610120634epsmtrp141938d46a3697a6b7092bbc012483f06~XLUs2oOZX1411014110epsmtrp1e;
 Wed, 10 Jun 2020 12:06:34 +0000 (GMT)
X-AuditID: b6c32a35-5edff70000004a22-39-5ee0ccca4128
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 0B.77.08382.ACCC0EE5; Wed, 10 Jun 2020 21:06:34 +0900 (KST)
Received: from [10.113.113.235] (unknown [10.113.113.235]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200610120634epsmtip1954b90208869e00cc7f90001e9f63705~XLUsnTU983256532565epsmtip1T;
 Wed, 10 Jun 2020 12:06:34 +0000 (GMT)
Subject: Re: [PATCH v3] mmc: sdhci: Fix HISPD bit handling
To: Jagan Teki <jagan@amarulasolutions.com>, Peng Fan <peng.fan@nxp.com>,
 Kever Yang <kever.yang@rock-chips.com>
From: Jaehoon Chung <jh80.chung@samsung.com>
Message-ID: <8c7edc3c-2876-f407-86a5-708a0164db1d@samsung.com>
Date: Wed, 10 Jun 2020 21:06:44 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200610114347.118501-1-jagan@amarulasolutions.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrLJsWRmVeSWpSXmKPExsWy7bCmge6pMw/iDD7us7D4smkCm8W26T/Z
 LJZP2Mdm8enBf2aLnXNOslr8WPWF1eLghyesFvOv7GO1eLu3k92B02Ptx/usHmvmrWH02LSq
 k83j7J0djB6bl9R7bHy3g8nj76z9LAHsUdk2GamJKalFCql5yfkpmXnptkrewfHO8aZmBoa6
 hpYW5koKeYm5qbZKLj4Bum6ZOUCnKSmUJeaUAoUCEouLlfTtbIryS0tSFTLyi0tslVILUnIK
 LAv0ihNzi0vz0vWS83OtDA0MjEyBChOyM6bteMlS0C5W0XF8EVsD4y7BLkZODgkBE4kf7avY
 uhi5OIQEdjBKzGrczQzhfGKUmD3nEiuE841R4trBpSwwLSv+tzJBJPYySjyZcBjKec8osWfD
 DWaQKmEBK4meTw1sILaIQJHE9Av7wIqYBY4wStw60QmWYBPQkdj+7TgTiM0rYCfR+uYpO4jN
 IqAqMXfaD7BBogIREse7J7ND1AhKnJz5BOwMTgFHiYbGx2A1zALiEreezGeCsOUltr+dA/aE
 hMBaDolfX09A3e0isa1/KROELSzx6vgWdghbSuJlfxuUXS2xq/kMVHMH0KXbmqAajCX2L50M
 ZHMAbdCUWL9LHyKsKLHz91xGiMV8Eu++9rCClEgI8Ep0tAlBlKhIXHr9kglm1d0n/6FKPCSO
 bqiZwKg4C8lns5B8MwvJN7MQ9i5gZFnFKJZaUJybnlpsWGCIHN2bGMHpVst0B+PEtx/0DjEy
 cTAeYpTgYFYS4fWf/iBOiDclsbIqtSg/vqg0J7X4EKMpMKwnMkuJJucDE35eSbyhqZGxsbGF
 iaGZqaGhkjivuMyFOCGB9MSS1OzU1ILUIpg+Jg5OqQamPVt67C1c17H6p10KVzujOC991pqi
 0zt+2+57tSXlqKHfp6kfXryY/ybnyuRnawI6YvuWmEsFL2j4+/Slh2Pi7IrUXTs/a669f1KI
 ffPuqPfL3moXKHx89nmdm1aT3xa3M5f3lS+a9eLiiv+T9VV3/zn2qWn+lK55v23lp3lws0qa
 J8YJ2ny4snnp9+8Ge+99Ws+SKVm4f97/Z8E+ncu1s8yPyl7d6btOgIWzJ+BVw5rsJTu7zgXv
 XBeoYfrt803HrStyBAJPrHroOC3wuUfJUqeonBMnCoJupJyuOSGh5MW09eMLnm0Lnj75m6DL
 ZXa+qY7rqUnlKS6jJM0/ch4H1/aWx98OSA84+PNGfYRbzGElluKMREMt5qLiRABSsJQtQAQA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFuphkeLIzCtJLcpLzFFi42LZdlhJTvfUmQdxBocv81p82TSBzWLb9J9s
 Fssn7GOz+PTgP7PFzjknWS1+rPrCanHwwxNWi/lX9rFavN3bye7A6bH2431WjzXz1jB6bFrV
 yeZx9s4ORo/NS+o9Nr7bweTxd9Z+lgD2KC6blNSczLLUIn27BK6MaTteshS0i1V0HF/E1sC4
 S7CLkZNDQsBEYsX/VqYuRi4OIYHdjBKNc1vYIRJSEp+fTmXrYuQAsoUlDh8uhqh5yygx/cUt
 RpAaYQEriZ5PDWwgtohAkcTBHycZQYqYBY4wStxtesUM0TGFUaKrp5cJpIpNQEdi+7fjYDav
 gJ1E65unYNtYBFQl5k77wQxiiwpESLTc/8MOUSMocXLmExYQm1PAUaKh8TFYDbOAusSfeZeg
 bHGJW0/mM0HY8hLb385hnsAoNAtJ+ywkLbOQtMxC0rKAkWUVo2RqQXFuem6xYYFhXmq5XnFi
 bnFpXrpecn7uJkZwhGlp7mDcvuqD3iFGJg7GQ4wSHMxKIrz+0x/ECfGmJFZWpRblxxeV5qQW
 H2KU5mBREue9UbgwTkggPbEkNTs1tSC1CCbLxMEp1cCUwVMXk/LxF6eqzrqnSqaJYasqmk/s
 qq6yWPZkldJlRYeU/1emK3GdT/Y7XlPrsOzWhSNiDW6SL9ex3g0OUWB/2Jn95gj/ute5ldv2
 bD2kOkHTegHL6TPc//1e/F/52Zo5c2/mjqetvxj8rMp0HgV6pseEintqG59OYVj75776XmmO
 Wg2mleYTS2zrpK9u3Sr98zyPj/YFtfcLdZMMV/3LNNXUUHmVco3LJmzv2SehFuz+36aZrWiY
 XWh6tneHUb9xjuvCNS+duksaGn0fXArbdvTQxinBab+vim9cfObSm6wpelwciofT37fP0vy4
 aVG2QdStqfuuLEhgvZXBN01YafrO9w3rH5iGzzpp++WlEktxRqKhFnNRcSIAK47Qux8DAAA=
X-CMS-MailID: 20200610120634epcas1p37bf9c14b332ba51efafd2cfaff261ee9
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200610114402epcas1p279b1c47dc902904c44d39d50c8e169e8
References: <CGME20200610114402epcas1p279b1c47dc902904c44d39d50c8e169e8@epcas1p2.samsung.com>
 <20200610114347.118501-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_050647_038793_B1081075 
X-CRM114-Status: GOOD (  20.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-rockchip@lists.infradead.org, Marc Zyngier <maz@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, u-boot@lists.denx.de,
 sunil@amarulasolutions.com, linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jagan,

On 6/10/20 8:43 PM, Jagan Teki wrote:
> SDHCI HISPD bits need to be configured based on desired mmc
> timings mode and some HISPD quirks.
> 
> So, handle the HISPD bit based on the mmc computed selected
> mode(timing parameter) rather than fixed mmc card clock
> frequency.
> 
> Linux handle the HISPD similar like this in below commit,
> 
> commit <501639bf2173> ("mmc: sdhci: fix SDHCI_QUIRK_NO_HISPD_BIT handling")
> 
> This eventually fixed the mmc write issue observed in
> rk3399 sdhci controller.
> 
> Bug log for refernece,
> => gpt write mmc 0 $partitions
> Writing GPT: mmc write failed
> ** Can't write to device 0 **
> ** Can't write to device 0 **
> error!
> 
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Kever Yang <kever.yang@rock-chips.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Reviewed-by: Jaehoon Chung <jh80.chung@samsung.com>
> Tested-by: Marc Zyngier <maz@kernel.org> # nanopc-t4
> Tested-by: Suniel Mahesh <sunil@amarulasolutions.com> # roc-rk3399-pc
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v3:
> - use && for quirk check.
> 
>  drivers/mmc/sdhci.c | 23 +++++++++++++++--------
>  1 file changed, 15 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/mmc/sdhci.c b/drivers/mmc/sdhci.c
> index 92cc8434af..a7db278a0e 100644
> --- a/drivers/mmc/sdhci.c
> +++ b/drivers/mmc/sdhci.c
> @@ -594,14 +594,21 @@ static int sdhci_set_ios(struct mmc *mmc)
>  			ctrl &= ~SDHCI_CTRL_4BITBUS;
>  	}
>  
> -	if (mmc->clock > 26000000)
> -		ctrl |= SDHCI_CTRL_HISPD;
> -	else
> -		ctrl &= ~SDHCI_CTRL_HISPD;
> -
> -	if ((host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) ||
> -	    (host->quirks & SDHCI_QUIRK_BROKEN_HISPD_MODE))
> -		ctrl &= ~SDHCI_CTRL_HISPD;
> +	if (!(host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) &&
> +	    !(host->quirks & SDHCI_QUIRK_BROKEN_HISPD_MODE)) {

Sorry, it needs to check more. Because it's different with kernel code.
Kernel code is only checking condition about SDHCI_QUIRK_NO_HISPD_BIT. 
but in u-boot, one more checking about SDHCI_QUIRK_BROKEN_HISPD_MODE.

So if it doesn't set to both, it's possible to set SDHCI_CTRL_HISPD as ctrl's flags.

> +		if (mmc->selected_mode == MMC_HS ||
> +		    mmc->selected_mode == SD_HS ||
> +		    mmc->selected_mode == MMC_DDR_52 ||
> +		    mmc->selected_mode == MMC_HS_200 ||
> +		    mmc->selected_mode == MMC_HS_400 ||
> +		    mmc->selected_mode == UHS_SDR25 ||
> +		    mmc->selected_mode == UHS_SDR50 ||
> +		    mmc->selected_mode == UHS_SDR104 ||
> +		    mmc->selected_mode == UHS_DDR50)
> +			ctrl |= SDHCI_CTRL_HISPD;
> +		else
> +			ctrl &= ~SDHCI_CTRL_HISPD;
> +	}
>  
I think that needs to add at here 
	 else 
		ctrl &= ~SDHCI_CTRL_HISPD; 

>  	sdhci_writeb(host, ctrl, SDHCI_HOST_CONTROL);
>  
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

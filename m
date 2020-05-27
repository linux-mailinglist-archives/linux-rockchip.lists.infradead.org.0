Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AED1E38F9
	for <lists+linux-rockchip@lfdr.de>; Wed, 27 May 2020 08:20:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/NmMyT4pcgH7ts4OtFwrJ6TI1Zsvwpt4N3oZvm+GAag=; b=Oo/XyVMzb3Bn5P
	rmMCK4hgpllKIFyo0DfpqfCxOxGXmESbQ0LwhVSBtFNntuON/pNoOAUDas6K8V00vKKSXXLdUlZx/
	G6tv4DrYAp9lSLzTniRpTRUQdu5PgbLQVJo7JHHz/G5Pkno3jUXXDbYvcXUzSSrUFGG5gKc6xOZJT
	4+KYx8JKf9yCeVA7f+K+TVaUvF+VGGdr7toJgPmmpNlMFvyDEsc7GxJKIGVWP30wcCQIpyqfCxXtz
	lsBMYTHXVlgDzWH4bkHOqpW631slLAnNkxu5BzsLrw1c+fjMaZ4j9yIesfCqXl8BLIdSnjrrQkrV+
	IEgyL94fBe/cBTWh7Y+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdpQQ-0002L4-53; Wed, 27 May 2020 06:20:26 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdpQL-0002KU-Lp
 for linux-rockchip@lists.infradead.org; Wed, 27 May 2020 06:20:23 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200527062003epoutp03315044aaba32f6c2e6b1d76e46410e83~SzkJ92EMG1363813638epoutp03G
 for <linux-rockchip@lists.infradead.org>; Wed, 27 May 2020 06:20:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200527062003epoutp03315044aaba32f6c2e6b1d76e46410e83~SzkJ92EMG1363813638epoutp03G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590560403;
 bh=PC6yBYtloQfeMgDCDNIkrlQZmnsvKT4uuNAiiutnrTc=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Fa431Z9dtPXJizenq54bvkMRuIOSpGXqaKRhW1wKlZ4mFLeJ7z0QWGsdzAbNWYSRf
 B9pFAGGZJb0d5KfJ1Yko1DWC2vJr5pOK9IiF24n5Wf9oLZxzqzmLIv+2VFH5khYyVE
 zB8e4dLWnuBw1F1UPdx+3WRROFNdM3Pw2VpBJ7w0=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20200527062003epcas1p36205216695f216fbb56fd73bed6d74ca~SzkJu8rf50274802748epcas1p38;
 Wed, 27 May 2020 06:20:03 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.154]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 49X1003hmDzMqYks; Wed, 27 May
 2020 06:20:00 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 27.D0.04395.F860ECE5; Wed, 27 May 2020 15:19:59 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20200527061958epcas1p438aad7065693575251732576fc0c7cee~SzkFlnBSd2909829098epcas1p4d;
 Wed, 27 May 2020 06:19:58 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200527061958epsmtrp1d99daa77bbbd809345412a0a4677803d~SzkFlBrDv1682616826epsmtrp1T;
 Wed, 27 May 2020 06:19:58 +0000 (GMT)
X-AuditID: b6c32a39-f7bff7000000112b-19-5ece068f6e7a
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 8B.11.08303.E860ECE5; Wed, 27 May 2020 15:19:58 +0900 (KST)
Received: from [10.113.113.235] (unknown [10.113.113.235]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200527061958epsmtip207e240e0a0fbfb4e2dab64c1afa5e7a4~SzkFXaCoY2158321583epsmtip2j;
 Wed, 27 May 2020 06:19:58 +0000 (GMT)
Subject: Re: [PATCH] mmc: sdhci: Fix HISPD bit handling
To: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
From: Jaehoon Chung <jh80.chung@samsung.com>
Message-ID: <39f02255-e362-9eeb-051b-dd11176d9fea@samsung.com>
Date: Wed, 27 May 2020 15:20:10 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200524172513.199962-1-jagan@amarulasolutions.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGJsWRmVeSWpSXmKPExsWy7bCmrm4/27k4g4n/BSy+bJrAZrFt+k82
 i+UT9rFZfHrwn9nix6ovrBbzr+xjtXi7t5Pdgd1j7cf7rB5n7+xg9Ni8pN5j47sdTB5/Z+1n
 CWCNyrbJSE1MSS1SSM1Lzk/JzEu3VfIOjneONzUzMNQ1tLQwV1LIS8xNtVVy8QnQdcvMATpD
 SaEsMacUKBSQWFyspG9nU5RfWpKqkJFfXGKrlFqQklNgWaBXnJhbXJqXrpecn2tlaGBgZApU
 mJCdsefzRfaCmYIVHZf0GxgP8XYxcnJICJhI/Oz+w97FyMUhJLCDUeLQulVsEM4nRom+ew9Z
 IZzPjBK7D8xghmnZ8fYlC0RiF6PEymsToPrfM0pc+f2FDaRKWMBcYvPuZWC2iICjxO1Nh5hA
 ipgF1jNK/H/SywiSYBPQkdj+7TgTiM0rYCcxb9k7VhCbRUBVYtX6+ywgtqhAhMT/SY9ZIGoE
 JU7OfAJmcwIN/TKpE2wBs4C4xK0n85kgbHmJ7W/nMIMskxDo5ZC4uXEWC8TdLhI73+9khLCF
 JV4d38IOYUtJvOxvg7KrJXY1n4Fq7mCUuLWtiQkiYSyxf+lkIJsDaIOmxPpd+hBhRYmdv+cy
 Qizmk3j3tYcVpERCgFeio00IokRF4tLrl0wwq+4++c8KYXtIzH//iX0Co+IsJK/NQvLOLCTv
 zEJYvICRZRWjWGpBcW56arFhgSlydG9iBKdRLcsdjMfO+RxiFOBgVOLhTfh9Jk6INbGsuDL3
 EKMEB7OSCK/T2dNxQrwpiZVVqUX58UWlOanFhxhNgSE/kVlKNDkfmOLzSuINTY2MjY0tTAzN
 TA0NlcR55/8AmiOQnliSmp2aWpBaBNPHxMEp1cCYe2Kju0LMZIESfo5fInnqmdXXjpdvaGBp
 WxzHe//dN+f+9jUPntUts8iMcZn4fr+bR83a+IOSK1tY7NN714V8td9tvNf6DJ9mQoOfXl0n
 K2tq3Lnj6xNDtfaJu3MuWH0+hefy8bdX1lvJs4THXfJ84GX97NxksUqGjMMlfAZPTB5MS902
 K12JpTgj0VCLuag4EQDKD72zuQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrOLMWRmVeSWpSXmKPExsWy7bCSvG4f27k4g4fXVC2+bJrAZrFt+k82
 i+UT9rFZfHrwn9nix6ovrBbzr+xjtXi7t5Pdgd1j7cf7rB5n7+xg9Ni8pN5j47sdTB5/Z+1n
 CWCN4rJJSc3JLEst0rdL4MrY8/kie8FMwYqOS/oNjId4uxg5OSQETCR2vH3J0sXIxSEksINR
 4t+cJewQCSmJz0+nsnUxcgDZwhKHDxdD1LxllPizZSNYjbCAucTm3cvYQGwRAUeJ25sOMYEU
 MQusZ5RovXOAEaJjCqNE74/5YB1sAjoS278dZwKxeQXsJOYte8cKYrMIqEqsWn+fBcQWFYiQ
 +HzwCBtEjaDEyZlPwOKcQBu+TOoEizMLqEv8mXeJGcIWl7j1ZD4ThC0vsf3tHOYJjEKzkLTP
 QtIyC0nLLCQtCxhZVjFKphYU56bnFhsWGOWllusVJ+YWl+al6yXn525iBMeNltYOxj2rPugd
 YmTiYDzEKMHBrCTC63T2dJwQb0piZVVqUX58UWlOavEhRmkOFiVx3q+zFsYJCaQnlqRmp6YW
 pBbBZJk4OKUamJoMzqXdP8bxhz+g8WWLwGTxY1/vHW3fW3fGVZR3y6tZl8/WVX4XT47eWvl0
 5pHTnjw2MSGp9a+c7F2Cxe4aRU9X6nCYOnfuM9PLDKeOyv9Q2OVpZl9q8HF7UJ2njN5uf10z
 19qldrrfOIIu6P8LWBY4m8tATyXFdLmNqkv2/wmZGTd2TyvKWbXYf90M70e2iz5l/5H+6zvF
 NG9h/KHb/ybK1aZwyPY3GE8NZvq/sohNvt1Jnv2I+nTd5alWchOTH1yY86wqoHE/V/f/rCPG
 7N3fCrk4071frZHO7D1xkDFg3u/ggo+fGRbcqlFtjZohMIvL1ePXmtwl539NWRF607ni/2Xt
 zIBdsw5yrVVWVmIpzkg01GIuKk4EAEVzL1YKAwAA
X-CMS-MailID: 20200527061958epcas1p438aad7065693575251732576fc0c7cee
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200524172612epcas1p1c809e840da784f84dfa6296a3b6d03de
References: <CGME20200524172612epcas1p1c809e840da784f84dfa6296a3b6d03de@epcas1p1.samsung.com>
 <20200524172513.199962-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_232022_138233_0CC37EFE 
X-CRM114-Status: GOOD (  19.48  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, Peng Fan <peng.fan@nxp.com>,
 linux-amarula@amarulasolutions.com, Kever Yang <kever.yang@rock-chips.com>,
 sunil@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 5/25/20 2:25 AM, Jagan Teki wrote:
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
> Cc: Kever Yang <kever.yang@rock-chips.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Jaehoon Chung <jh80.chung@samsung.com>

> ---
>  drivers/mmc/sdhci.c | 23 +++++++++++++++--------
>  1 file changed, 15 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/mmc/sdhci.c b/drivers/mmc/sdhci.c
> index 92cc8434af..280b8c88eb 100644
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
> +	if (!(host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) ||
> +	    !(host->quirks & SDHCI_QUIRK_BROKEN_HISPD_MODE)) {
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
>  	sdhci_writeb(host, ctrl, SDHCI_HOST_CONTROL);
>  
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

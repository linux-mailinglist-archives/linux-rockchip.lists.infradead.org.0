Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B93842392
	for <lists+linux-rockchip@lfdr.de>; Wed, 12 Jun 2019 13:12:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rogCxbb1K6UxIz2Nesgi3QThnCRWdEPo8+ulI6TN64c=; b=O8mTu3sE2dTHIn9ia2/oGisMn
	nzrLqihgWc8EIFygGVXjuGMeqJJyyii8ONcr1FQCwMSTrVGwMwA26i5HPbxxZYBiqYIIV3bX+atSF
	3hlC46KUC5vgxC7KP8gYJNDig0GOSd8T1xsm/VNoef1g3wYIzMnDcyTL+zuNes+L27C9Nd4/pmx7y
	Ud86oitF16C2rvjh/rRel99rdwL75PmAQ15hReIzo4053pR2ulrqZVOy6JVxvZxDDlcnfpkAeLPgF
	zR6WuacgI3joXAw9chGAQm91Ldao9bmlulx5G68g+jOqBZDDMSlJg6dv5U2TdNFhoICO6uce7o7tB
	3Un4WR56g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1AY-0005NT-JY; Wed, 12 Jun 2019 11:11:54 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1AV-0005Mx-KX
 for linux-rockchip@lists.infradead.org; Wed, 12 Jun 2019 11:11:52 +0000
Received: by mail-wr1-x444.google.com with SMTP id c2so16435336wrm.8
 for <linux-rockchip@lists.infradead.org>; Wed, 12 Jun 2019 04:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=T0cZTEnUTvGGmjw5I8Wkm+xAGTXLp41aRjblrVtvO6s=;
 b=JyatqGuFCTR9C17AwuSyJvET6Y0x6fp6Y5k8x7KKvWEwZhzRSKNY+9DIRrM50+Om9Y
 WpMMP16n48yJ+G5mLjaHbe+AIIJrqRHDZXPYuhpIcfm1VjzPpUdxicueI0SOyL4HBkMt
 3SOxQGDCQ/d0QJLUjQzOMtTSC6rQvOi7rCp94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=T0cZTEnUTvGGmjw5I8Wkm+xAGTXLp41aRjblrVtvO6s=;
 b=g/li2pLfiwNLmrTE7lFMiGhUILJOlS41nLER8hrKzMyZz0aw/JVURX2jS902Geo1Er
 g6tPxCWR0YNn2kiMDtBKGuSLwbFzsh5idxvr7z+mMvh/g413tK7eDkXwjVOf/jmx5Y1T
 F0fpt9DheadD9tYT2Om6Qlv8KnIIrmRoNbEeWCItTVw0AoBNsiIqbf7puhTq+wXZhcrf
 BpPAykUC/HNzxO779FUAZ6Uieq4RRIgGhb+KC2NXsWwz2tqfp4+ZKU/XOowkcDoHqQYg
 X/6R6p/Zc/Nx6vu+6VnQHvLwnl8ZIYw/iu55V7OOzVjw4kyPa/1itwVyL5QfiY0U+AAo
 xH5A==
X-Gm-Message-State: APjAAAWtj5pXNqTJpExqJfHvhQPUeChAYprf6WWR8Z8xkQaUX5ldiVdJ
 O9GWdtdam+L8yZadQLtp7ltrCQ==
X-Google-Smtp-Source: APXvYqz8aasOCe6ye7E5FfdTBcDAkR84x/KcKfNBPauTc6i9sI0Ku3jNcSHbU+R9NjuSPf/RBBPEVA==
X-Received: by 2002:adf:f8cf:: with SMTP id f15mr40008967wrq.333.1560337909649; 
 Wed, 12 Jun 2019 04:11:49 -0700 (PDT)
Received: from [10.176.68.125] ([192.19.248.250])
 by smtp.gmail.com with ESMTPSA id 5sm5337449wmg.7.2019.06.12.04.11.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 04:11:48 -0700 (PDT)
Subject: Re: [PATCH v3 3/5] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
To: Ulf Hansson <ulf.hansson@linaro.org>, Doug Anderson <dianders@chromium.org>
References: <20190607223716.119277-1-dianders@chromium.org>
 <20190607223716.119277-4-dianders@chromium.org>
 <363DA0ED52042842948283D2FC38E4649C52F8A0@IRSMSX106.ger.corp.intel.com>
 <CAD=FV=U8eo78Ee9xjhGXJMv=8YF9o89KLX024GH3iBRnRjCRvQ@mail.gmail.com>
 <CAPDyKFo=QMRTkNYUVSE2AqiZgytkTVRXF0Mvznn6trVT4-cR=Q@mail.gmail.com>
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
Message-ID: <c7c6d3f4-ebb1-8964-0616-973fae1ab47d@broadcom.com>
Date: Wed, 12 Jun 2019 13:11:46 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAPDyKFo=QMRTkNYUVSE2AqiZgytkTVRXF0Mvznn6trVT4-cR=Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_041151_680321_65EBE214 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Madhan Mohan R <madhanmohan.r@cypress.com>,
 "brcm80211-dev-list.pdl@broadcom.com"
 <brcm80211-dev-list.pdl@broadcom.com>, YueHaibing <yuehaibing@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 "David S. Miller" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 "briannorris@chromium.org" <briannorris@chromium.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "Hunter,
 Adrian" <adrian.hunter@intel.com>, Double Lo <double.lo@cypress.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "mka@chromium.org" <mka@chromium.org>, Naveen Gupta <naveen.gupta@cypress.com>,
 Wright Feng <wright.feng@cypress.com>,
 "brcm80211-dev-list@cypress.com" <brcm80211-dev-list@cypress.com>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 6/12/2019 12:10 PM, Ulf Hansson wrote:
>> drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c:
>>    mmc_set_data_timeout(md, func->card);
>>    mmc_wait_for_req(func->card->host, mr);
> These are not okay, none of these things calls should really be done
> from an SDIO func driver.
> 
> It tells me that the func driver is a doing workaround for something
> that should be managed in a common way.

We are using some low-level functions passing chain of skbuff to the 
device using CMD53 with scatterlist. If I recall correctly Marvell made 
an attempt to have a similar function for it in the mmc stack. Not sure 
if that ever made it in. If so I can rework our driver using that API. 
If not, I can make a new attempt.

Regards,
Arend

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

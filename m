Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1F74282F
	for <lists+linux-rockchip@lfdr.de>; Wed, 12 Jun 2019 15:58:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:References:In-Reply-To:
	Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xvIeOoSrz0k6PNb0VgXSYtTwo77wKu7jnlfw+H6ANlI=; b=MM2i3DZ8WdQgFx6EjbSIPccE4
	9XCEg2C249bfAfQAlkCm88+tK8HfNe0WaeL1TFEReBjUdgZVj+8WPOoGULJQJMOiu4jnRgJLqLwfr
	2S1wCLY+7PrQSNb6ahPCG9qPc6380zL+2SUgA5mZuV7fV2klyHiTblkr4/RlpMQTFWqNA4BlISCEb
	z052DO8h0UJnl3YYelVuTzbVHSNNaNGkxxqVjNyZnYQfUmrzAXuc50J4eDg4XcpLjisjqlwbd+LhG
	GzCSVZckwBHzowwkmwRcPptoyFhMah3pn7hNRf4OBDrFqRA72CsrfUz02VsKDE6GfIWuByYnCAam4
	b5Sqz0uAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb3lU-0000WW-Dd; Wed, 12 Jun 2019 13:58:12 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb3lR-0000WC-5d
 for linux-rockchip@lists.infradead.org; Wed, 12 Jun 2019 13:58:10 +0000
Received: by mail-ed1-x541.google.com with SMTP id k21so22563808edq.3
 for <linux-rockchip@lists.infradead.org>; Wed, 12 Jun 2019 06:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:date:message-id:in-reply-to:references:user-agent
 :subject:mime-version:content-transfer-encoding;
 bh=Y+4CclOchg68MnXlcf58UCwueBz0Zes4t/blHlilXOM=;
 b=g0wJ6bpZk6ogq2pFPm12oLk0Yrtzf26EwY4s3uS4fyOd6DhxzmisPT5DBzV21l6Erd
 8xZ853XwfPK15Zq64UL6RB8AuP6abPIlPzfZH+D8IuaOfO5wLiRJMFLfbYg0x6wxkchX
 HX/TXdun2GZFn1lb1gKb3lWu60z7OGNBd2wN8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:subject:mime-version
 :content-transfer-encoding;
 bh=Y+4CclOchg68MnXlcf58UCwueBz0Zes4t/blHlilXOM=;
 b=Qg95R8nwrFEv9hvlLEIaRgoeoYQ+y4T6TAACwxZ5Iq8zMYdB9JXk7MEQWNzawCL97Z
 ohFoN/xUzn0DHA3v665HfxoLwP52FZtWSKA2F7kpaqr3K+puYl9xSUPxUjk8Wiyparmc
 NvhbAbSHeqLDnbHtcZcYXNz11QRhzfHMzk/IqoGY9ZvdhlGB2/A8iFo1n88e70LYuzIs
 JWgiogTJeeK91h52l7WfHbiQYhT7UK3miuPJ9tPmGI+vxk+iQSQOF095GvdUGkNjd/A0
 VYyXu+qldkk4rHc9cfW/AYXncrZhpzWViTtwrwijlvHY8hm3sTnAo3V3Q5i1t/Rug10z
 MqIw==
X-Gm-Message-State: APjAAAXe5m0UVlV+yoFK9UbTJ9iF4ppwCVT9JkMDrjsrWAb/sN+fyjdS
 aBBqNba3Qt2SxwV/MGb5vD+nbg==
X-Google-Smtp-Source: APXvYqx5QFCQSwGLkC7MLW22rxzxN0yYWE/WednBPqVlB7ZnJV0pXPuAI6oipqRdLLV5RQdCZqU/cQ==
X-Received: by 2002:a50:974b:: with SMTP id d11mr51553467edb.24.1560347887655; 
 Wed, 12 Jun 2019 06:58:07 -0700 (PDT)
Received: from [192.168.178.17] (f140230.upc-f.chello.nl. [80.56.140.230])
 by smtp.gmail.com with ESMTPSA id h5sm4614214ede.74.2019.06.12.06.58.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 12 Jun 2019 06:58:06 -0700 (PDT)
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Jun 2019 15:58:05 +0200
Message-ID: <16b4bfb39e0.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <CAPDyKFpM0+FfvoMo8Z_hxM9rzSjeQZHCsA2SPa8WP+SRDhhsPA@mail.gmail.com>
References: <20190607223716.119277-1-dianders@chromium.org>
 <20190607223716.119277-4-dianders@chromium.org>
 <363DA0ED52042842948283D2FC38E4649C52F8A0@IRSMSX106.ger.corp.intel.com>
 <CAD=FV=U8eo78Ee9xjhGXJMv=8YF9o89KLX024GH3iBRnRjCRvQ@mail.gmail.com>
 <CAPDyKFo=QMRTkNYUVSE2AqiZgytkTVRXF0Mvznn6trVT4-cR=Q@mail.gmail.com>
 <c7c6d3f4-ebb1-8964-0616-973fae1ab47d@broadcom.com>
 <CAPDyKFpM0+FfvoMo8Z_hxM9rzSjeQZHCsA2SPa8WP+SRDhhsPA@mail.gmail.com>
User-Agent: AquaMail/1.20.0-1458 (build: 102100001)
Subject: Re: [PATCH v3 3/5] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_065809_223293_DBB532C1 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
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
 brcm80211-dev-list.pdl@broadcom.com, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, Hante Meuleman <hante.meuleman@broadcom.com>,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, briannorris@chromium.org,
 linux-wireless@vger.kernel.org, Double Lo <double.lo@cypress.com>,
 Doug Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Naveen Gupta <naveen.gupta@cypress.com>,
 Wright Feng <wright.feng@cypress.com>, "Hunter,
 Adrian" <adrian.hunter@intel.com>, brcm80211-dev-list@cypress.com,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


On 6/12/2019 1:48 PM, Ulf Hansson wrote:
> On Wed, 12 Jun 2019 at 13:11, Arend Van Spriel
> <arend.vanspriel@broadcom.com> wrote:
>>
>> On 6/12/2019 12:10 PM, Ulf Hansson wrote:
>>>> drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c:
>>>>     mmc_set_data_timeout(md, func->card);
>>>>     mmc_wait_for_req(func->card->host, mr);
>>> These are not okay, none of these things calls should really be done
>>> from an SDIO func driver.
>>>
>>> It tells me that the func driver is a doing workaround for something
>>> that should be managed in a common way.
>>
>> We are using some low-level functions passing chain of skbuff to the
>> device using CMD53 with scatterlist. If I recall correctly Marvell made
>> an attempt to have a similar function for it in the mmc stack. Not sure
>> if that ever made it in. If so I can rework our driver using that API.
>> If not, I can make a new attempt.
> 
> I recall there were some patches, but not sure why we didn't merge them.
> 
> Anyway, if you want to move this forward, that would be awesome!

Let's scope it before moving forward. Our use-case is to transfer a
chain of skbuff's. I am pretty sure that is not something we want to
deal with in mmc stack api. So I suppose passing a scatterlist is more
sensible, right? Maybe on sdio layer of the stack we could consider
dealing with skbuff's for network func drivers?

Let me see if I can find those Marvell patches. Might be a good start.

Regards,
Arend



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

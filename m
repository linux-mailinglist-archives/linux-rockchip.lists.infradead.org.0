Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C31E22E0D
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 May 2019 10:11:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DVxCFPzCKVq5mEtp2v/sB/fOeAF3qeYkQwwkc7c1wLQ=; b=b61/7UWELztGxU+8gUHYO1EGS
	18PXOJPVcC2+jTsos0QHx8yj9M9wayhxiyrAKm1BUFTWaeM4tZNYHAgxrGfhMHX2lKZE5MRvPZfSG
	7q5pXIuc6Ucj8rRVltTaw7xs8eY2umhr0IzN1gKv5MwyXatSNwxuJQUOKX/OW900daG1ny23iS95u
	vYXzF0eUffOhgVtAwSBDQGQWi6qk3mmvbVgbVMAaNfxxb2UkI9rcLoScVlZ4AgYU5e+Klev+dupim
	Z0BRyn2GUPlmX7oexaS24o1zEN048lfK9uIXnajvF2rO2vYRHZmGVTEb9oiy70rsxndoOFrEg1G+3
	4+QC8w1OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdOB-0000qp-UC; Mon, 20 May 2019 08:11:19 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdMe-0006LZ-Gs
 for linux-rockchip@lists.infradead.org; Mon, 20 May 2019 08:09:52 +0000
Received: by mail-ed1-x544.google.com with SMTP id j12so22478186eds.7
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 01:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hKt31xD+Dl8MzM54WFXgU95OQA9AwS6wGbeoPpSKfXE=;
 b=I2Lnt/WtkJjDLrDgWSYRJHdM95JskcT/jxH9QckQMcj/7PmrJgwgQz6Q6ftoKRwTZ9
 9vCkHGOEX5MxLnlEtV98FPcLqUiMFStugzKSpO0A48EXDefeXgWbIHhMTwzBSzmXikZ5
 CPJXahNcXca0FGjVF22eGZbd6XPVxBMapmwYg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hKt31xD+Dl8MzM54WFXgU95OQA9AwS6wGbeoPpSKfXE=;
 b=Zw8FyuKuIZEj52zYwIh3cMLxpQSeFwkc9oSzZdfibKuFZuH3Wi8jvwlQ6EDztTtHML
 wQRLaqESDCUDYeWN2wgM6PYC0TOUMsyyVoP6GyzcPa8NaHx2XD669myXvzVhYmnRKYSh
 Io8IGrt4Z28oYa0hPU4vIWa0Dz8Go/956vqcrZ/hGGzQMD1ixIfGq6fVRfysBXt3nR7g
 CijsFSfcAPaKTmZLlZyTdNruWnGWdQ6rMXivGEcs4xAcVouPBSrlujLJc73kiaqmrTSa
 URt4+0Py4qRqc3Zobfqmct5eRs3ZsYJCwcNPKW39/Dn0nudvsK4iRgc+ZWbRC2Jv4Y2M
 avzg==
X-Gm-Message-State: APjAAAVGwNStLcI8s1Y3g/dXsqRKWj0+6GnY/ESnvKuTwelZLC39H9xy
 H7hqQaa/I/0SMWwk0/fQlvIcaA==
X-Google-Smtp-Source: APXvYqyzT9sszHOtK0V/iwAwNW8LGsXi2uW7QI5DTUVDOy96+wSa9nUb5iDqOpm++yl3P0LW/Icifw==
X-Received: by 2002:aa7:c4d2:: with SMTP id p18mr73940804edr.232.1558339782382; 
 Mon, 20 May 2019 01:09:42 -0700 (PDT)
Received: from [10.176.68.125] ([192.19.248.250])
 by smtp.gmail.com with ESMTPSA id x22sm5441295edd.59.2019.05.20.01.09.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 01:09:41 -0700 (PDT)
Subject: Re: [PATCH 1/3] brcmfmac: re-enable command decode in sdio_aos for
 BRCM 4354
To: Douglas Anderson <dianders@chromium.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>
References: <20190517225420.176893-1-dianders@chromium.org>
 <20190517225420.176893-2-dianders@chromium.org>
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
Message-ID: <e3f54bcb-8d10-1336-1458-2bd11cfc1010@broadcom.com>
Date: Mon, 20 May 2019 10:09:39 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190517225420.176893-2-dianders@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_010944_574234_61F684DF 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Hante Meuleman <hante.meuleman@broadcom.com>,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, briannorris@chromium.org,
 linux-wireless@vger.kernel.org, Double Lo <double.lo@cypress.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Wright Feng <wright.feng@cypress.com>,
 brcm80211-dev-list@cypress.com, Naveen Gupta <naveen.gupta@cypress.com>,
 Franky Lin <franky.lin@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 5/18/2019 12:54 AM, Douglas Anderson wrote:
> In commit 29f6589140a1 ("brcmfmac: disable command decode in
> sdio_aos") we disabled something called "command decode in sdio_aos"
> for a whole bunch of Broadcom SDIO WiFi parts.
> 
> After that patch landed I find that my kernel log on
> rk3288-veyron-minnie and rk3288-veyron-speedy is filled with:
>    brcmfmac: brcmf_sdio_bus_sleep: error while changing bus sleep state -110
> 
> This seems to happen every time the Broadcom WiFi transitions out of
> sleep mode.  Reverting the part of the commit that affects the WiFi on
> my boards fixes the problem for me, so that's what this patch does.

This sounds very similar to the issue we had during integration of wifi 
on rk3288 chromebooks years ago.

> Note that, in general, the justification in the original commit seemed
> a little weak.  It looked like someone was testing on a SD card
> controller that would sometimes die if there were CRC errors on the
> bus.  This used to happen back in early days of dw_mmc (the controller
> on my boards), but we fixed it.  Disabling a feature on all boards
> just because one SD card controller is broken seems bad.  ...so
> instead of just this patch possibly the right thing to do is to fully
> revert the original commit.

I am leaning towards a full revert, but let's wait for more background info.

Regards,
Arend

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

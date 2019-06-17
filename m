Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E37647FCE
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 12:36:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RHMtB9GL3qOseL2Cr5nmXUEfBWBs1dt7D0YhieWKK7I=; b=u5whg4G/Mfo4E5ppIAilDpXlk
	d3n9ANSTE4GoKUT+n9TCpA1n+uksnCGU+vhnEAK2ZOil7JlbsjyUCo5sH2Rs97aeZzuLe8hh4aaWX
	gq5kA9nIvexb1uDeWSWdx1D6kAB7fqdG4/8eKiv6qkeCvBP1sSwbyrvqs/JJsLo6wPqj645HspjZy
	PMDL+u6Lbe2rkz4et5dK22O7yXw+UBY+OLHpnKmWt+MnsWdlKrNHNgYprbJTnOBjNpQ3NDqIhllXA
	qUOYQ2zXf2f60PJezy6oVEH02VxunIANWFpckONLm5XdaUKoK7gtItCBOSFz69Y5QWhHCyWByYQ3x
	fCfJWVNfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcozV-0005XV-1S; Mon, 17 Jun 2019 10:35:57 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcozS-0005Wy-6G
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 10:35:55 +0000
Received: by mail-wr1-x444.google.com with SMTP id n9so9392356wru.0
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 03:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=LdLD6/GLnt8m3EwyYjIGs7rafDrtX5c/RGMl/GKKl8o=;
 b=LbaodTzMAL8u12y2crGYXzc5LcEcD4olP+PnKNNkq1Ry/FFWYTKTvPDF4uTM6VXEOO
 Ok3b/58sc2ip+falSZ1Temq/KsMze8wnfJQLOklfCX2iBleXVj0ObJ1h1Mgls5NXnna/
 SQSig9XOK4T0+hyMOxF8Xhmr/+4C1XqzOEM24=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LdLD6/GLnt8m3EwyYjIGs7rafDrtX5c/RGMl/GKKl8o=;
 b=DcYL4IYiqtPPbyapYKuFh/1wxtSZMVUMrutzjMtQF6EF5iBQ/23899Hy+mLI9qe8kB
 M9W82h1HwQY7HPk2gfGPVltCSgpX0nLRAKZqMhpedjVkLL1bsry9dXbz/vvLtoij2m83
 Eexf4c+1vRKrdsemDhP4sgSbmWODXpvYHpZBgDj0X/kTYYJA/DbNxZOKrsYbhcGziT0M
 PP+59WKHheAfJiHOcr68SvmnUqRYZqCyp/XsUhhFZNwpCwWS6w8kE8CcW7JrKClKa6pj
 gseUImpevv5sNVr1FeqOQA63ZQrMTI+oWTcMXyFwFFXZmbjvC2WlsYtvLfpnsbBViepd
 fBQQ==
X-Gm-Message-State: APjAAAVyUKLiJIwSSPh/WYNKlYKyqwsvA6iyPlDKGmPKWTqTczucaJdm
 6FkWr+x9D6sQRe9drS2GuzBKgA==
X-Google-Smtp-Source: APXvYqzFFb4lC949Z60IWxorsffQZyTfPYve5pAYlHt07baOm8aNcHW8hBKNaqDa+JDSAIdRNBcnyw==
X-Received: by 2002:adf:f84f:: with SMTP id d15mr75042119wrq.53.1560767752500; 
 Mon, 17 Jun 2019 03:35:52 -0700 (PDT)
Received: from [10.176.68.244] ([192.19.248.250])
 by smtp.gmail.com with ESMTPSA id p140sm3887001wme.31.2019.06.17.03.35.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 03:35:51 -0700 (PDT)
Subject: Re: [PATCH v4 3/5] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
To: Douglas Anderson <dianders@chromium.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>
References: <20190613234153.59309-1-dianders@chromium.org>
 <20190613234153.59309-4-dianders@chromium.org>
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
Message-ID: <be97a37a-d81b-5756-7a97-418d9b36a381@broadcom.com>
Date: Mon, 17 Jun 2019 12:35:50 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190613234153.59309-4-dianders@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_033554_233469_C1B2C49E 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "David S. Miller" <davem@davemloft.net>,
 Madhan Mohan R <madhanmohan.r@cypress.com>,
 brcm80211-dev-list.pdl@broadcom.com, YueHaibing <yuehaibing@huawei.com>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Hans de Goede <hdegoede@redhat.com>, netdev@vger.kernel.org,
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

On 6/14/2019 1:41 AM, Douglas Anderson wrote:
> There are certain cases, notably when transitioning between sleep and
> active state, when Broadcom SDIO WiFi cards will produce errors on the
> SDIO bus.  This is evident from the source code where you can see that
> we try commands in a loop until we either get success or we've tried
> too many times.  The comment in the code reinforces this by saying
> "just one write attempt may fail"
> 
> Unfortunately these failures sometimes end up causing an "-EILSEQ"
> back to the core which triggers a retuning of the SDIO card and that
> blocks all traffic to the card until it's done.
> 
> Let's disable retuning around the commands we expect might fail.
> 
> Fixes: bd11e8bd03ca ("mmc: core: Flag re-tuning is needed on CRC errors")

Reviewed-by: Arend van Spriel <arend.vanspriel@broadcom.com>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

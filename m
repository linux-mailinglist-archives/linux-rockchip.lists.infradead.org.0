Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B56D22F2C
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 May 2019 10:46:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RgjFLMOYVq+0EoL/ED7BGfLBMzOu93JLEXsr6ZQQaGM=; b=BvkLYbx+VOp3q/G8vFKHOXkA8
	wMTPV/QjHUC+aPdsuYIiCcm5JaBtA+ujKhr/LbvZqLygPLlzHkhwA7KIsk50gNyUu4AJUQndYjPi3
	ibglNoSabHrsTfAwMjlaXMShP8QlkOLiZNGg2p1ODwFGLDmhkgprvUDnxxoLe+rRT/mUtnnSG6U7O
	Sbg7fbzfx2h+qi4QDv9bl4HUvVOMkGk7FUBTd+fx/cRstmD9uohqVrx+LuF3yKNkYA3UjnYWvN51y
	B+U+T2L/uSqukS01vOQKVdVLWG+eo69fBsSTUed7Em0aT22vr5IilcZUoUCa13m0ReH65n72d/bPx
	aOGxADRdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdwB-00013r-7N; Mon, 20 May 2019 08:46:27 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdw8-000134-32
 for linux-rockchip@lists.infradead.org; Mon, 20 May 2019 08:46:25 +0000
Received: by mail-ed1-x544.google.com with SMTP id w37so22657511edw.4
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 01:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ktchpIaf6Qn4t/lbS5YwI1umrEsw+iYk4oGTYPAn0Z4=;
 b=f9ChIGUvlt3CGWSwsg5qPs2S81uHmGSPPzHRp7MzBDCGH8RrjqSrA1LMroNIKQn9zR
 dtEqrgctZXB0wz9jZbJGT4o7k1tdN8qO9Jo1lBRwBLbu0zBh8DgmjeeuuKkYFhR6SBWL
 XuC6TNn9EfTIz6CsUjL484mAsQk5dTlGIV0wI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ktchpIaf6Qn4t/lbS5YwI1umrEsw+iYk4oGTYPAn0Z4=;
 b=Q7IwY89dltUEqsVixq0/MqzVI4wmCUCsO/AqZrRlz26h1oquErxla8Tth07pbwH7Ml
 o1BGUQo9cCpDIoN4RjLxZXqSu/kRIOf8C3Ep7ZM+ntp2QIz+FYPQBdqkTB5hIj7Sqvlm
 XvQR1LnJbOXwfiLOq+bb7cvuNUu1+2kr4ckl5eRvGbV30QBHA2HD+34GyH+Iihgg3O3i
 hH9nTJvrAbsXaU4FvfWYOZyXG3mVsgrdaag7f1qlY7zaBuzQ6fkw8fi8MLpDYDskFkbr
 RMAdwUCWXaOE7fZHwjbKFncrU15UZv4e24wyoGLn5g/Y5d3TAm6CHnAWctWVAaoY6l1X
 RELg==
X-Gm-Message-State: APjAAAXNnZJZkmjA2E/3cumKMLqosOoyhfJucY8QgIJ3jWl5I2bPZ/FQ
 56FydYkhMAsLNYqAW+mCuBjLTA==
X-Google-Smtp-Source: APXvYqzfRx8Bglpj6Um1+VSRWHpYxGadwLBdPJzqIpOF016M0nutxj6ki9xVjGiN6Ji39Ep9xjAXvw==
X-Received: by 2002:aa7:c0d3:: with SMTP id j19mr43042628edp.179.1558341982511; 
 Mon, 20 May 2019 01:46:22 -0700 (PDT)
Received: from [10.176.68.125] ([192.19.248.250])
 by smtp.gmail.com with ESMTPSA id s57sm5294935edd.54.2019.05.20.01.46.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 01:46:21 -0700 (PDT)
Subject: Re: [PATCH 2/3] mmc: core: API for temporarily disabling
 auto-retuning due to errors
To: Wolfram Sang <wsa@the-dreams.de>, Douglas Anderson <dianders@chromium.org>
References: <20190517225420.176893-1-dianders@chromium.org>
 <20190517225420.176893-3-dianders@chromium.org> <20190519090642.GA2279@kunai>
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
Message-ID: <36cae1d3-f11c-3c71-3f04-23fdc74f8866@broadcom.com>
Date: Mon, 20 May 2019 10:46:19 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190519090642.GA2279@kunai>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_014624_140711_1A9B8FB8 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Ulf Hansson <ulf.hansson@linaro.org>, Martin Hicks <mort@bork.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-kernel@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, briannorris@chromium.org,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 Double Lo <double.lo@cypress.com>, linux-rockchip@lists.infradead.org,
 Avri Altman <avri.altman@wdc.com>, mka@chromium.org,
 Ritesh Harjani <riteshh@codeaurora.org>, Wright Feng <wright.feng@cypress.com>,
 Jiong Wu <lohengrin1024@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 5/19/2019 11:06 AM, Wolfram Sang wrote:
> 
>> Let's add an API that the SDIO card drivers can call that will
>> temporarily disable the auto-tuning functionality.  Then we can add a
>> call to this in the Broadcom WiFi driver and any other driver that
>> might have similar needs.
> 
> Can't you fix the WiFi driver to return something else than -EILSEQ
> before calling mmc_request_done() to skip the retuning?

Not really. mmc_request_done() is for the host controller driver so the 
wifi driver is not involved.

Regards,
Arend

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

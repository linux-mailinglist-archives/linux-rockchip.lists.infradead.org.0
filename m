Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E63BC9DE
	for <lists+linux-rockchip@lfdr.de>; Tue, 24 Sep 2019 16:10:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=blPO+/6XMOazdzisiUsNPxMtvR2P2HuQmhNuuMzQ8zQ=; b=GoRGlB5YYQE9eG
	5WLxG1YgmR+lFUd3oWCbsCOdKqO0RFTfhYxvqh+IrmMzCKDLYic0bW0FTxYMuV0/wD6f2LLM4KvJs
	0/Be9CTC6WTLzJZyDuc2M5DXPWaHbKzbdELM3l3mijuzOJFAfGMp5XWBuh9iniq5Wf/PWtViE+wDC
	lfvmdz1LndgHZa07ifL8jwSNTWBUb0jYbLfdqACpdVkeEZ8qDGG+ST68sxkLmBtBRhrxTuw0TzlUx
	gwdyd9icI3LfIqFXZsGnzdtiRoErIQ7VSPTaQ7qoq/6tw2OO8wiJW3Ipyo0hl0c/09ouPghZBQbXy
	EIQw5hpqK3nMtLTNx9gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iClWV-0001gh-0B; Tue, 24 Sep 2019 14:10:35 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iClWQ-0001ew-Rc
 for linux-rockchip@lists.infradead.org; Tue, 24 Sep 2019 14:10:32 +0000
Received: by mail-wr1-x42a.google.com with SMTP id i18so2113693wru.11
 for <linux-rockchip@lists.infradead.org>; Tue, 24 Sep 2019 07:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=CD8NXjWHXI1PHdT+Yt5q2iCIoHrQv0Ncx4K7iwz1VKY=;
 b=zBxpjFaP7l2EinUCWp0CpW2Sg1KTXXAkWldWE1wejALSHl3jp0sFDuHfH9Gi2HC2Au
 kzQ8eNjBepwuBE+WbnhNaJeaA2YgNuzXB5kwhQzzLXinKPvQCT716XwpcJ0OQwEW4Q1k
 mYBZVNfAVOI9FS3MUBcZFqmEz8BMf5scqsMrQSYS7a0Jda+62JkKZCi45L2ODbr/7ITr
 EoZCg4hKA2dNdppOt/WLSZcVso9BHBuKo+dAoQSrK79NYYuSijPjb9/ZAnfpmak9bhlW
 Khimacswau6lOgHXL5Nurct25X6UOV0+d8wHpX6mo9I/A7DTGUsuFceEWn1DJa/iOWon
 b9dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=CD8NXjWHXI1PHdT+Yt5q2iCIoHrQv0Ncx4K7iwz1VKY=;
 b=HfaDqIJ42d5+D+0Cc24NNmsbygS/V1n49gJHjTCwPYpzZbjM4+Gzs0exwUulcaWHlL
 ZgL54lvpj+/jN0PGaz4fayC/DIqh14r0VVpPDxPOP/zGKsbiq1mZsNcX56QVEcVjmvie
 cXN4l7LhHJVIRkCi1qpsOwZi+ObfFauZWUOK/jLn80FaLuxUsXsJnpdOF+5JGxksUriT
 QobY0xKLnIOk154+hIBjNKfApCq7HEZOnvUmWpxtnRuAGPEvX0q6zZqVhe7uI1xpR1nX
 deG0J01t7CGt6eeVIvVme6yjavQnuZZN05DGqcx01AjEFHTMYtFpxFqFvVE9rBOkm049
 accg==
X-Gm-Message-State: APjAAAUwcAZJa/CZhdq1IxQEo7efJaqSQt5o0Pp2WzGJGcGx+4uoDEzT
 +1w4Kh2H65vDszhvOR503rL5Nm3hMY9oyQ==
X-Google-Smtp-Source: APXvYqyxcFFWxlfEByHp+UI2Ozbsm+7ZlCpzeuoY03TS06zxKMIrzCq38xzQB0qK8eF54jJ/spcLAg==
X-Received: by 2002:adf:e7ca:: with SMTP id e10mr2442564wrn.234.1569334227683; 
 Tue, 24 Sep 2019 07:10:27 -0700 (PDT)
Received: from localhost (uluru.liltaz.com. [163.172.81.188])
 by smtp.gmail.com with ESMTPSA id f83sm61195wmf.43.2019.09.24.07.10.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 07:10:26 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Ankur Tyagi <Ankur.Tyagi@gallagher.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>
Subject: RE: [PATCH 2/3] clk: let init callback return an error code
In-Reply-To: <ME2PR01MB4738B127557AE20F6315AA7FE5840@ME2PR01MB4738.ausprd01.prod.outlook.com>
References: <20190924123954.31561-1-jbrunet@baylibre.com>
 <20190924123954.31561-3-jbrunet@baylibre.com>
 <ME2PR01MB4738B127557AE20F6315AA7FE5840@ME2PR01MB4738.ausprd01.prod.outlook.com>
Date: Tue, 24 Sep 2019 16:10:25 +0200
Message-ID: <1jv9thlr8u.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_071030_946262_AF7022F1 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Tero Kristo <t-kristo@ti.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 "linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue 24 Sep 2019 at 13:38, Ankur Tyagi <Ankur.Tyagi@gallagher.com> wrote:

> Hi,
>
> I am no expert here but just looked at the patch and found few
> discrepancy that I have mentioned inline.
>

[...]

>
> Aren't all functions returning 0 always?
>

Yes, on purpose. This patch is an API conversion to let the init()
callback of the clock ops return an error code or 0.

The patch is not meant to change anything in the prior behavior of the
clock drivers which is why every exit path return 0 with this change.

IOW, yes there are all returning 0 for now, but it will eventually
change.


>>   *
>>   * @debug_init:Set up type-specific debugfs entries for this clock.  This
>>   *is called once, after the debugfs directory entry for this
>> @@ -243,7 +247,7 @@ struct clk_ops {
>>    struct clk_duty *duty);
>>  int(*set_duty_cycle)(struct clk_hw *hw,
>>    struct clk_duty *duty);
>> -void(*init)(struct clk_hw *hw);
>> +int(*init)(struct clk_hw *hw);
>>  void(*debug_init)(struct clk_hw *hw, struct dentry *dentry);
>>  };
>>
>> --
>> 2.21.0
>
> ________________________________
>  This email is confidential and may contain information subject to legal privilege. If you are not the intended recipient please advise us of our error by return e-mail then delete this email and any attached files. You may not copy, disclose or use the contents in any way. The views expressed in this email may not be those of Gallagher Group Ltd or subsidiary companies thereof.
> ________________________________

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

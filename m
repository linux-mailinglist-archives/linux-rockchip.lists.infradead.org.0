Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CFA1B654F
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Apr 2020 22:20:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CbUstx0mCnTe/O8pcQkLFI/J0WcDSKNg8b9Mk51YRDI=; b=X+I3H+qF3HaFZ1
	ZXnG+aRjTVvLU2XhNGZ5H57vAZtz8GUIKeKp64F4MivpUtZlGZ8y3DQfxAmVSTXZQmT4QrgmSY3Pi
	VOE2HaXJVC/ytgE5TdSgPTACWKGdK60j8+TVWJksAgbR8MoMDC9hAIcL9LBCgZ76gVYQeed2YCPX8
	LW3+E8GNgW2zV1MqgIpgsgJqpw7HgIekmyAxWpZTk1LidY8/HlZSHKYZJVVp12cMDnlFEbmaIf84l
	XdFUVwBXwrtn+jB07b6W4vAQ7nEahgN6yeMdkAX1S0Pxn17phsjoJeBj3J6fc2ywCkr6VlRASgvW9
	Me3zfYg962P9JA1orQAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRiKw-00037O-Os; Thu, 23 Apr 2020 20:20:42 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRiKt-00036I-VL
 for linux-rockchip@lists.infradead.org; Thu, 23 Apr 2020 20:20:41 +0000
Received: by mail-ej1-x643.google.com with SMTP id gr25so5707235ejb.10
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Apr 2020 13:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YmiZ/ZxWr1VybX2u36jFFBljJvMI6PQcBnakrRBuFvc=;
 b=CYKHU/i/9Ack1w8T06q57x++2/81CCj12RQI1wHZVm/LaDgSLWabuo6CJLToatB+zj
 G/lV1NFsVlKnLURyRX+tVWQCUStABg+s+IBLXkO+jArdAtHdPWWOIpsKw/A48oG+sTiJ
 fo+w9tpow9sy6LH2l9frtCS/yhB1JgkG20vsArzt//cZ2i3ieUqQTs1glPd1jt6DBQQW
 OMn1zmZNuDfN6cUg1fGAetrIK10VLs5nqHD8EbyoPNaVfAs8U0s3nE73/13p/jspDzD3
 qGk42G2pHMDz/7U06BOF/vkonFDXVV+vjv83lkUY5pbUMsWg9NDLfaVAPzUl4762i6w5
 GwhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YmiZ/ZxWr1VybX2u36jFFBljJvMI6PQcBnakrRBuFvc=;
 b=hYJ+QghX69G/aPVfIs6JOoGylqvzAvLizlKsMvrRTYL6ftWudHtf/lIZUO/Y2PKa7x
 gaTOtN0Zq9w7qY+/gSk3Kv50Aast3QFBAsrsCWV6yzaipEQ5mcPcjer1bdCIqGthOeUv
 TU7TrgJwrsWqmrddlTDME+VQFiGgQVocLMTNRulSZa8KtktPRx6IL0jQLNDB9FyrrnFl
 W/seYfvXZPrmqBcpik40VCtAaufFowkhSHc+Ot6bcS1VnTreXvts4F1Dag1R45DfqxtM
 8WVr9M1+UnwCqSsLR8J3ZubA3YT3Yan/gEUc3ArXaKaMQm6+Vurpj5ip/Fz1/en5lM5W
 0OGA==
X-Gm-Message-State: AGi0PuaVYzdTsXr9/A2G00AEUO/sHq8xsScxZugeqUCSnalaCY1sjoq2
 WxLRUp4cy16EHR+bY2WaxmUlvm13N9VpNeKLVek=
X-Google-Smtp-Source: APiQypLFRFUo8oCx8s1iec0XKMbb96VyOkGXbH/rG/5y1AOLbu+4xWQm+HOgQlwjdJd+++Z7AvXASdzqNqbctlxMVLE=
X-Received: by 2002:a17:906:ce49:: with SMTP id
 se9mr880124ejb.345.1587673236511; 
 Thu, 23 Apr 2020 13:20:36 -0700 (PDT)
MIME-Version: 1.0
References: <20191028182254.30739-1-pgwipeout@gmail.com>
 <5230f80c-9684-72e0-8f96-602428a9e655@arm.com>
 <9e5546de-f5b6-7f60-96d0-612249e832ce@arm.com>
 <CAMdYzYrZhof2DtrNH4+Amu1ZN-6sWw57rC+2joqXSyWVn99wWw@mail.gmail.com>
In-Reply-To: <CAMdYzYrZhof2DtrNH4+Amu1ZN-6sWw57rC+2joqXSyWVn99wWw@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 23 Apr 2020 16:20:25 -0400
Message-ID: <CAMdYzYppYADDTGD26uO4zpUCZWSW8eRpcdtLsUQGDqppW3_7vA@mail.gmail.com>
Subject: Re: [PATCH 0/5] add rk3328 usb3 phy driver
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_132040_010006_C1D78A10 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pgwipeout[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: katsuhiro@katsuster.net,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-usb@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, kishon@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

As a status update for this, I have spent quite a while working on this driver.
In the end, it appears the available documentation is insufficient.
The original driver calls a few registers that are not documented in the TRM.

What I have found is the following:
The 2.0 functionality works as documented in the original rockchip driver.
The 3.0 functionality does not.
A 3.0 device does not trigger the interrupt like a 2.0 device does.
A 3.0 device causes 0x34 bit 6 to toggle, which is usb3otg_pipe3_phystatus
I've enabled all usb3phy interrupts, and cannot get a 3.0 device to
trigger any of them.

Did the original driver ever work correctly?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

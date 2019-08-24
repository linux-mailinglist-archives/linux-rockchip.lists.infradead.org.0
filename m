Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2642F9BCE1
	for <lists+linux-rockchip@lfdr.de>; Sat, 24 Aug 2019 11:55:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:Date
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VhiPeUuUeT38JJ+JTHclN59yg0T2VwOpZwx1r/hdm1A=; b=pB3ZQ7N5xvqww+
	vxf++tMwwAVNWk4dG1U7ZrbSQyifBa/XVQKpY7U6bPcH5qH1bhNp6jA6UUaNjHMW8PU7BPwwrrNR5
	ZojnWFy0LXHaP54+2MuhxQ0Qzqk1tigNzW6AMEppyFFwiDi8g8P5Jg1TTccIfV/3ghvQFAm2cvGc3
	LVbKNXePXHbXJSgecp4TkiniHA2SZY2EJqNN6VU56+WKrd2wFtFZbXJgCoflCEkaWu8lMzUH+eGSf
	/2sRFjjsN6JwDHz83eA9E1vLReSN/N6gST48zeiV3Fd3JN3QMYiK9RlVYbp4Piz+WVeQxNvbHogcT
	cMursFP5MWaC6jAUre1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Sl5-00017E-FM; Sat, 24 Aug 2019 09:54:55 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Sl1-00016b-JQ
 for linux-rockchip@lists.infradead.org; Sat, 24 Aug 2019 09:54:52 +0000
Received: by mail-wm1-x32d.google.com with SMTP id k1so11025854wmi.1
 for <linux-rockchip@lists.infradead.org>; Sat, 24 Aug 2019 02:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=ttYgXaXDP6nIDUvQU0e3KmnHuw2lG+lJFBA4sJ2gPRM=;
 b=SZtwKwYjUQKfgIPFywespm0Vh/wkSxjbQGDNqV+co7oU35IUIrhkAkFLLMIC0kAzB6
 NEriGeoAWXJMAZYSkKmlHwtiyPOp/Smac5bFIwo0pivWoZAeOOuof4OhtT7kzlDAgTlZ
 pJQqlRizFGwurJVNgUSum9jaAI0FQN69TNmiiwEX0JVXq5aHbkw7DRgy4lCZcrdk1a3s
 b0HMp9cdkMeW9jV6jINvbZo3azdkRqH4sPQ5ZodX1mTPE9xrQ/b6YWKIdxoxLElaT4+u
 ZoO75auJS2B+rqtcsjPlmh7fCmLLho2Xv2hLu80ZzLdCPPOj9veSRF5t2/SVYXPzO4gO
 cukw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=ttYgXaXDP6nIDUvQU0e3KmnHuw2lG+lJFBA4sJ2gPRM=;
 b=bi8OmynOKLInXByn4pEfDNk9CjyI14H+0Cd3P3msqnA4qNPjvwFujKIZelrtt6aMQw
 Ak1LsmmkJgWuvOERcupCpFaHiz+sACCLhJhI2aCa8XdS5n/uA2Kz1/a++8RxpC2PPHSp
 RxeuCHDOhhwV+4F326uv1lUvu4Y/6t/hy9vIbPenYT4gc5EtiH7p5BIUVQaD4zgkew/B
 gHfrM0rvnB4Gw5InOoAuw19wQpZ1FQSTMQwHFJzlY3Dx2JvmJ6Osaud0s4rGIlOMYUmv
 30Cs1d9IRg2aHoMB6YGzl80T4ReHZAyw8ziAuNcGJEoNIEA+Z1XIha4PNH8pHt61I+BO
 g1JA==
X-Gm-Message-State: APjAAAVvNngcwvlkKAp0Hc01pM3PUJOkEZkZbBehTOOfficjSP2qpSgV
 cUDmwt406CpuHTJTQ8TYQNrCNuE9
X-Google-Smtp-Source: APXvYqyu8bfN1tlhq2tSeOUeqj66BzSf5z8eRLra85bIKCz/b2PAbHbn2uU/4o66xXVSBDbXmXje2g==
X-Received: by 2002:a1c:cb0b:: with SMTP id b11mr10341397wmg.95.1566640489360; 
 Sat, 24 Aug 2019 02:54:49 -0700 (PDT)
Received: from alex-chromebook
 (cpc83647-brig20-2-0-cust926.3-3.cable.virginm.net. [82.19.195.159])
 by smtp.gmail.com with ESMTPSA id 91sm17182478wrp.3.2019.08.24.02.54.47
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 24 Aug 2019 02:54:48 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
X-Google-Original-From: Alex Dewar <a.dewar@sussex.ac.uk>
Date: Sat, 24 Aug 2019 10:54:46 +0100
To: linux-rockchip@lists.infradead.org
Subject: Broken suspend/resume on RK3399-based Chromebook
Message-ID: <20190824095446.ztcuounx5stnsven@alex-chromebook>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_025451_667052_155E03E4 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (alex.dewar90[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alex.dewar90[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi all,

I've got an Asus Chromebook Flip C101PA, which is based on the Rockchip RK3399
SoC, and it seems like suspend and resume is broken (AFAIK it's never worked).
When I try to suspend, the screen goes blank, but the power light stays on
rather than flashing as it usually does when it suspends. The system then seems
to be frozen.

I tried debugging it as per the documentation by setting
/sys/power/pm_test to different levels, but I was able to get all the way down
to "core" with the test still working (i.e. it suspends then wakes up 5s
later).

Does anyone have any ideas where the problem might lie?

Best,
Alex

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

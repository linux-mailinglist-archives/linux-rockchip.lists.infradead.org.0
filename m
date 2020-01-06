Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D460B1319E8
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Jan 2020 21:53:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vEPD7TMf1zk4IQGdEjwiFy2p0hT89xVH72AIqXBSqWA=; b=KJ3jvWh1uoaZTK
	ZhrP1pxGNgb5BW9sAbnJtvduPz9afOW89a2PSgL/14GQqeWFJXJH/ZaKyH8fv1Z3k99A29RXlc5mu
	uj83vMCgFy6H/z0sb9KWE2B7pD3vonUwD+qvmqfWcNVz1zC6MLb16566Q00a+Q0KkrEnsZZogWS14
	lrAIFOdXmwbT3YaAIxEiHtY9dtdaqjI6avGV3l/WOv+GA/adVz39TbcXLqVqCgoqMhJG8HzcTAkkq
	u2oVrkZdPEvv/YUtlm5FP92Oi4Jmm+pf/sVjohONohuebuS4shMd/iJiHe7M8bAjtvVzBqDNHTAYV
	qHnU0sMFFaw+UhRV23jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioZN8-0007zU-Pq; Mon, 06 Jan 2020 20:53:10 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioZMJ-0007BI-D6
 for linux-rockchip@lists.infradead.org; Mon, 06 Jan 2020 20:52:21 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1ioZMD-0005xN-TP; Mon, 06 Jan 2020 21:52:13 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from dell2.five-lan.de (pD9E89450.dip0.t-ipconnect.de
 [217.232.148.80]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 006KqCX5031411
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Mon, 6 Jan 2020 21:52:13 +0100
Subject: Re: [PATCH 1/5] regulator: mp8859: add driver
To: Mark Brown <broonie@kernel.org>
References: <20200104153321.6584-1-m.reichl@fivetechno.de>
 <20200104153321.6584-2-m.reichl@fivetechno.de>
 <20200106204520.GD6448@sirena.org.uk>
From: Markus Reichl <m.reichl@fivetechno.de>
Message-ID: <1216f846-0a3b-70f0-70b9-49f8fa90720d@fivetechno.de>
Date: Mon, 6 Jan 2020 21:52:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20200106204520.GD6448@sirena.org.uk>
Content-Language: de-DE
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1578343939;
 d7e446e1; 
X-HE-SMSGID: 1ioZMD-0005xN-TP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_125219_599240_D96BEDAB 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am 06.01.20 um 21:45 schrieb Mark Brown:
> On Sat, Jan 04, 2020 at 04:32:45PM +0100, Markus Reichl wrote:
>> The MP8859 from Monolithic Power Systems is a single output DC/DC
>> converter. The voltage can be controlled via I2C.
> 
> I have patches 1, 2 and 4 with no cover letter or other information
> about dependencies.  What's the story there?
> 
I used scripts/get_maintainer.pl on the single patches, will resend to 
a combined list.

> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
